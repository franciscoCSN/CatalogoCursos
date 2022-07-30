package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoLoginRepository;
import model.ModelLogin;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoLoginRepository daologinrepository = new DaoLoginRepository();	

   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password= request.getParameter("password");
		String url = request.getParameter("url");
System.out.println("autenticated");
		try {

			if(login != null && !login.isEmpty() && password != null && !password.isEmpty()) {

				ModelLogin modellogin = new ModelLogin();
				modellogin.setLogin(login);
				modellogin.setPassword(password);

				if(daologinrepository.authenticate(modellogin)) {
					
					request.getSession().setAttribute("user_ofSession",modellogin.getLogin());
					if(url == null || url.equals("null")) {//se a url for nula então segue para a pagina de login padrão.
						url = "main/manage.jsp";
					}

					RequestDispatcher redrect_homepage = request.getRequestDispatcher(url);
					request.setAttribute("usr",modellogin.getLogin());			//"main/home.jsp"   | url
					redrect_homepage.forward(request,response);
					
				}else {
					System.out.println("Usuario ou senha invalido");
					RequestDispatcher redirect_index = request.getRequestDispatcher("./main/login.jsp");
					request.setAttribute("msg","login e senha não encontrado!.");
					redirect_index.forward(request,response);
				}

			}else {

				RequestDispatcher redirect_index = request.getRequestDispatcher("index.jsp");
				request.setAttribute("msg","Informe loging e senha!");
				redirect_index.forward(request,response);
			}

		}catch(Exception e) {
			
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("error.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionar.forward(request, response);
			System.out.println(e.getMessage());
		}

	}

}
