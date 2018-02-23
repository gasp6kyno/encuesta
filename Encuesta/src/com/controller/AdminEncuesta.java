package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EncuestaDAO;
import com.model.*;

/**
 * Servlet implementation class AdminEncuesta
 */
@WebServlet("/AdminEncuesta")
public class AdminEncuesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EncuestaDAO encuestaDAO;
	
	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		try {
			encuestaDAO = new EncuestaDAO(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
		
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEncuesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/mostrar.jsp");
		List<Encuesta> listEncuestas = null;
		try {
			listEncuestas = encuestaDAO.listEncuestas();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("encuestas", listEncuestas);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		int ask1 = Integer.parseInt(request.getParameter("ask1"));
		int ask2 = Integer.parseInt(request.getParameter("ask2"));
		int ask3 = Integer.parseInt(request.getParameter("ask3"));
		int ask4 = Integer.parseInt(request.getParameter("ask4"));
		int ask5 = Integer.parseInt(request.getParameter("ask5"));
		int ask6 = Integer.parseInt(request.getParameter("ask6"));
		int ask7 = Integer.parseInt(request.getParameter("ask7"));
		int ask8 = Integer.parseInt(request.getParameter("ask8"));
		int ask9 = Integer.parseInt(request.getParameter("ask9"));
		String grupoID = request.getParameter("grupoID");
		String comentarios = request.getParameter("comentarios");
		
		float total = (float) (ask1+ask2+ask3+ask4+ask5+ask6+ask7+ask8+ask9) / 9;
		
		Encuesta encuesta = new Encuesta(ask1, ask2, ask3, ask4, ask5, ask6, ask7, ask8, ask9, total, grupoID, comentarios);
		
		try {
			encuestaDAO.insertar(encuesta);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/gracias.jsp");
		dispatcher.forward(request, response);
	}

}
