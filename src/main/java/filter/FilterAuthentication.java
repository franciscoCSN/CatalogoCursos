package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import connection.SingleConnection;

@WebFilter(urlPatterns = { "/main/*" })
public class FilterAuthentication extends HttpFilter implements Filter {

	private static final long serialVersionUID = 1L;
	private static Connection connection;

	public FilterAuthentication() {

	}

	public void destroy() {
		try {
			connection.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hsRequest = (HttpServletRequest) request;
		HttpSession session = hsRequest.getSession();
		String loggedUser = (String) session.getAttribute("user_ofSession");// pega o usuario da sessão atual
		String url_toAuthenticate = hsRequest.getServletPath();// pega a url que está a ser acessada

		try {

			if (loggedUser == null && url_toAuthenticate.contains("/main/")// se a url não contiver "ServiletLogin"
				// usuario é redirecionado a index.jsp.

				) {
					RequestDispatcher redirect = request.getRequestDispatcher("../login.jsp");
// request.setAttribute("msg","Usuario não está logado.<br>Efetue o login
// novamente.");
					redirect.forward(request, response);
					System.out.println(url_toAuthenticate);
					System.out.println(loggedUser);
					return;

				}else{
				chain.doFilter(request, response);

			}
			
			connection.commit();/*Deu tudo certo, então comita as alteracoes no banco de dados*/
			
		} catch (Exception ex) {
			ex.getStackTrace();
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", ex.getMessage());
			redirecionar.forward(request, response);
			
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {
		connection = SingleConnection.getConnection();
	}

}
