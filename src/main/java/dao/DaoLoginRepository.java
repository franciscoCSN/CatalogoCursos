package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnection;
import model.ModelLogin;

public class DaoLoginRepository {

	private Connection connection;

	public DaoLoginRepository() {

		connection = SingleConnection.getConnection();
		System.out.println("conection");
	}

	public boolean authenticate(ModelLogin modellogin) throws Exception {
			String sqlQuery = "SELECT * FROM usuario_model WHERE login = ?  AND password = ? ";
			PreparedStatement statment = connection.prepareStatement(sqlQuery);
			statment.setString(1, modellogin.getLogin());
			statment.setString(2, modellogin.getPassword());
			ResultSet result  = statment.executeQuery();
			if(result.next()) {
				System.out.println("result:"+result.toString()); 
				
				return true;
			}

			return false;
	}
}
