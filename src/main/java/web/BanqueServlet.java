package web;

import java.io.IOException;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.session.ICompteLocal;

@WebServlet("/banque")
public class BanqueServlet extends HttpServlet{
	
	@EJB
	private ICompteLocal metier;
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	  req.setAttribute("list_ejb", metier.getAllComptes());
	  req.getRequestDispatcher("banque.jsp").forward(req, resp);
	  
}
}
