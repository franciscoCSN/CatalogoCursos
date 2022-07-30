package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.codec.binary.Base64;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.DaoItemRepository;
import model.ModelItem;

@MultipartConfig
@WebServlet("/ServletEditItem")
public class ServletEditItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletEditItem() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		System.out.println(id);
		
		
		if (action.equals("deleteitembyid")){
			DaoItemRepository daoitemrepository2 = new DaoItemRepository();
			System.out.println("deleteitembyid!");
			if(id != null) {
			 Long Lid = Long.valueOf(Integer.parseInt(id));
			 
				try {
				String msg = "Item deletado com sucesso!";
				daoitemrepository2.deleteitem(Long.valueOf(id));
				
				ObjectMapper mapper2 = new ObjectMapper();
				//String json2 = mapper2.writeValueAsString(msg);
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write(msg);
				System.out.println(msg);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			}
		}

		
		
		if (action.equals("getitembyid")){
			DaoItemRepository daoitemrepository2 = new DaoItemRepository();
			System.out.println("getitembyid!");
			if(id != null) {
			 Long Lid = Long.valueOf(Integer.parseInt(id));
			 
				try {
				List<ModelItem> item = daoitemrepository2.get_item_by_id(Lid);
				
				ObjectMapper mapper2 = new ObjectMapper();
				String json2 = mapper2.writeValueAsString(item);
				response.setContentType("text/html;charset=UTF-8");
				response.getWriter().write(json2);
				System.out.println("l" + json2);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			}
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String action = request.getParameter("action");
		System.out.println("title:" +request.getAttribute("title"));
		String url = request.getParameter("url");
		String id = request.getParameter("m-id");   
		String title = request.getParameter("m-title");   
		String hotlink = request.getParameter("m-hotlink");   
		String description = request.getParameter("m-description");   
		String base64_image = request.getParameter("base64_image");
		Part part = request.getPart("base64_image"); /*Pega foto da tela*/
		ModelItem modelitem = new ModelItem();
		DaoItemRepository daoitemrepository = new DaoItemRepository();
		//request.getContentType();
		System.out.println(base64_image);
		if(part.getSize() > 0) {
			try { 
			//part.getSize() > 0
			if (part.getSize() > 0) {
				byte[] foto = org.apache.commons.io.IOUtils.toByteArray(part.getInputStream()); /*Convert imagem para byte*/
				new Base64();
				String imagemBase64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," +  Base64.encodeBase64String(foto);
				System.out.println("tamanho da foto" + part.getSize());
				
				modelitem.setId(Long.valueOf(id));
				modelitem.setContador_visita(0L);
				modelitem.setTitulo(title);
				modelitem.setHotlik(hotlink);
				modelitem.setDescricao(description);
				modelitem.setImagem_base64(imagemBase64);
				
				
			}
			daoitemrepository.SaveItem(modelitem);
			
			ModelItem newmodelitem  = daoitemrepository.get_item_by_title(modelitem.getTitulo());
			
			if(url == null || url.equals("null")) {//se a url for nula então segue para a pagina de login padrão.
				url = "main/editar.jsp";
			}

			RequestDispatcher redrect_homepage = request.getRequestDispatcher(url);
			//request.setAttribute("usr",modelsignup.getUser_name());			//"main/home.jsp"  | url
			request.setAttribute("modelitem", newmodelitem);
			redrect_homepage.forward(request,response);
			
			/*
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(dadosJsonUser);
			response.getWriter().write(json);
			*/
			
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		 }
		
	}

}
