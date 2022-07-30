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
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.DaoItemRepository;

import model.ModelItem;

/**
 * Servlet implementation class ServletItem
 */
@MultipartConfig( fileSizeThreshold   = 1024 * 1024 * 1,  // 1 MB
maxFileSize         = 1024 * 1024 * 10, // 10 MB
maxRequestSize      = 1024 * 1024 * 15 // 15 MB
)
@WebServlet("/ServletItem")
public class ServletItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletItem() {
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoItemRepository daoitemrepository = new DaoItemRepository();
		
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		System.out.println(id);
		
		if(action.equals("getitems"));
		{
			System.out.println("getcalled!");
			
			 try {
				List<ModelItem> items = daoitemrepository.getAllItem();
			System.out.println("see:"+items.get(0).getDescricao());
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(items);
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write(json);
			
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
				
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String action = request.getParameter("action");
		System.out.println("title:" +request.getAttribute("title"));
		String url = request.getParameter("url");
		String id = request.getParameter("id");   
		String title = request.getParameter("title");   
		String hotlink = request.getParameter("hotlink");   
		String description = request.getParameter("description");   
		String base64_image = request.getParameter("base64_image");
		Part part = request.getPart("base64_image"); /*Pega foto da tela*/
		ModelItem modelitem = new ModelItem();
		DaoItemRepository daoitemrepository = new DaoItemRepository();
		request.getContentType();
		
		if(part.getSize() > 0) {
			try { 
			
			if (part.getSize() > 0) {
				byte[] foto = org.apache.commons.io.IOUtils.toByteArray(part.getInputStream()); /*Convert imagem para byte*/
				new Base64();
				String imagemBase64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," +  Base64.encodeBase64String(foto);
				System.out.println("tamanho da foto" + part.getSize());
				
				//modelitem.setId(null);
				modelitem.setTitulo(title);
				modelitem.setHotlik(hotlink);
				modelitem.setDescricao(description);
				modelitem.setImagem_base64(imagemBase64);
				
				
			}
			daoitemrepository.SaveItem(modelitem);
			
			ModelItem newmodelitem  = daoitemrepository.get_item_by_title(modelitem.getTitulo());
			
			if(url == null || url.equals("null")) {//se a url for nula então segue para a pagina de login padrão.
				url = "main/manage.jsp";
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
