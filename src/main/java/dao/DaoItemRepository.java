package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.SingleConnection;
import model.ModelItem;

public class DaoItemRepository {
	
	private Connection connection;

	public DaoItemRepository() {

		connection = SingleConnection.getConnection();
		System.out.println("connection pic called");
	}

	
	
	public boolean SaveItem(ModelItem modelitem) throws Exception, Exception {
		System.out.println("save item called");
		if (!this.verify_item_by_id(modelitem)) {/*Grava um novo*/
			
		String sql = "INSERT INTO item_model(v_counter,description,hotlink,base64_image,title)  VALUES (?,?,?,?,?);";
		PreparedStatement sqlCommand = connection.prepareStatement(sql);

		sqlCommand.setLong(1, 0);
		sqlCommand.setString(2, modelitem.getDescricao());
		sqlCommand.setString(3, modelitem.getHotlik());
		sqlCommand.setString(4, modelitem.getImagem_base64());
		sqlCommand.setString(5, modelitem.getTitulo());
		sqlCommand.execute();
		connection.commit();
		System.out.println("Novo Item salvo");

		return false;
		}else {
			String sql = "UPDATE item_model SET v_counter=?,description=?,hotlink=?,base64_image=?,title=? WHERE id=?";
			PreparedStatement sqlCommand = connection.prepareStatement(sql);
			sqlCommand.setLong(1, modelitem.getContador_visita());
			sqlCommand.setString(2, modelitem.getDescricao());
			sqlCommand.setString(3, modelitem.getHotlik());
			sqlCommand.setString(4, modelitem.getImagem_base64());
			sqlCommand.setString(5, modelitem.getTitulo());
			sqlCommand.setLong(6, modelitem.getId());
			sqlCommand.executeUpdate();
			System.out.println();
			System.out.println("Item atualizado.");
			connection.commit();

		}

		return true;
		
	}
	
	public ModelItem xSaveItem(ModelItem modelitem) throws Exception, Exception {
		System.out.println("save item called");
		if (!this.verify_item_by_id(modelitem)) {/*Grava um novo*/
			
		String sql = "INSERT INTO item_model(v_counter,description,hotlink,base64_image,title)  VALUES (?,?,?,?,?);";
		PreparedStatement sqlCommand = connection.prepareStatement(sql);

		sqlCommand.setLong(1, 0);
		sqlCommand.setString(2, modelitem.getDescricao());
		sqlCommand.setString(3, modelitem.getHotlik());
		sqlCommand.setString(4, modelitem.getImagem_base64());
		sqlCommand.setString(5, modelitem.getTitulo());
		sqlCommand.execute();
		connection.commit();
		System.out.println("Novo Item salvo");

		return modelitem;
		}else {
			String sql = "UPDATE item_model SET v_counter=?,description=?,hotlink=?,base64_image=?,title=? WHERE id=?";
			PreparedStatement sqlCommand = connection.prepareStatement(sql);
			sqlCommand.setLong(1, modelitem.getContador_visita());
			sqlCommand.setString(2, modelitem.getDescricao());
			sqlCommand.setString(3, modelitem.getHotlik());
			sqlCommand.setString(4, modelitem.getImagem_base64());
			sqlCommand.setString(5, modelitem.getTitulo());
			sqlCommand.setLong(6, modelitem.getId());
			sqlCommand.executeUpdate();
			System.out.println();
			System.out.println("Item atualizado.");
			connection.commit();

		}

		return modelitem;
		
	}
	
	
	public boolean verify_item_by_id(ModelItem modelitem) throws Exception {
		
		if(modelitem.getId() != null) {
		String sqlQuery = "SELECT * FROM item_model WHERE id = ?";
		PreparedStatement statment = connection.prepareStatement(sqlQuery);
		statment.setLong(1, modelitem.getId());
		ResultSet result  = statment.executeQuery();
		if(result.next()) {
			result.toString();
			System.out.println("Item já existe");//test
			return true;
		}
		}

		return false;
	}

	public boolean verify_item_by_title(ModelItem modelitem) throws Exception {
		String sqlQuery = "SELECT * FROM item_model WHERE title = ?";
		PreparedStatement statment = connection.prepareStatement(sqlQuery);
		statment.setString(1, modelitem.getTitulo());
		ResultSet result  = statment.executeQuery();
		if(result.next()) {
			result.toString();
			System.out.println("usuário já existe");
			return true;
		} 

		return false;
	}
	
	public ModelItem get_item_by_title(String title) throws Exception {
		ModelItem modelitem = new ModelItem();
		
		String sqlQuery = "SELECT * FROM item_model WHERE title = ?";
		PreparedStatement statment = connection.prepareStatement(sqlQuery);
		statment.setString(1,title);
		ResultSet result  = statment.executeQuery();
		if(result.next()) {
			
			modelitem.setId(result.getLong("id"));
			modelitem.setContador_visita(result.getLong("v_counter"));
			modelitem.setTitulo(result.getString("title"));
			modelitem.setHotlik(result.getString("hotlink"));
			modelitem.setDescricao(result.getString("description"));
			modelitem.setImagem_base64(result.getString("base64_image"));
			
		} 

		return modelitem;
	}

public List<ModelItem> get_item_by_id(long id) throws Exception {
	List<ModelItem> allitems = new ArrayList<ModelItem>();
	
		
		String sqlQuery = "SELECT * FROM item_model WHERE id = ?";
		PreparedStatement statment = connection.prepareStatement(sqlQuery);
		statment.setLong(1, id);
		ResultSet result  = statment.executeQuery();

		while(result.next()) {
			ModelItem modelitem = new ModelItem(); 
			modelitem.setId(result.getLong("id"));
			modelitem.setContador_visita(result.getLong("v_counter"));
			modelitem.setDescricao(result.getString("description"));
			modelitem.setHotlik(result.getString("hotlink"));
			modelitem.setImagem_base64(result.getString("base64_image"));
			modelitem.setTitulo(result.getString("title"));
			
			System.out.println(result.getLong("id"));
			allitems.add(modelitem);
System.out.println("tamanho"+allitems.size());
		}

		return allitems;
	}
	
	public List<ModelItem> getAllItem() throws Exception {
		List<ModelItem> allitems = new ArrayList<ModelItem>();
		

		String sqlQuery = "SELECT * FROM item_model";
		PreparedStatement statment = connection.prepareStatement(sqlQuery);
		ResultSet result  = statment.executeQuery();
		
		while(result.next()) {
			ModelItem modelitem = new ModelItem(); 
			modelitem.setId(result.getLong("id"));
			modelitem.setContador_visita(result.getLong("v_counter"));
			modelitem.setDescricao(result.getString("description"));
			modelitem.setHotlik(result.getString("hotlink"));
			modelitem.setImagem_base64(result.getString("base64_image"));
			modelitem.setTitulo(result.getString("title"));
			
			
			allitems.add(modelitem);

		}

		return allitems;
	}
	
	

	public void deleteitem(long id) throws Exception, Exception {
		System.out.println("save item called");
		ModelItem modelitem = new ModelItem();
		modelitem.setId(id);
		if (this.verify_item_by_id(modelitem)) {/*Grava um novo*/
			
		String sql = "delete from item_model where id = ?";
		PreparedStatement sqlCommand = connection.prepareStatement(sql);

		sqlCommand.setLong(1, id);
		
		sqlCommand.executeUpdate();
		connection.commit();
		System.out.println("Item Deleted");
		
		}
		
	}
	
	
	
}
