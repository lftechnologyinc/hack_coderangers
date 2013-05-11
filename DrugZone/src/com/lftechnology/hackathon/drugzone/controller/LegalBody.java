package com.lftechnology.hackathon.drugzone.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAO;
import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAOImpl;
import com.lftechnology.hackathon.drugzone.dto.User;

/**
 * Servlet implementation class LegalBody
 */
@WebServlet("/LegalBody")
public class LegalBody extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LegalBody() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("/pages/legal_login_form.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("l_name");
		String password=request.getParameter("l_password");
		
		User user=new User();
		user.setUsername(userName);
		user.setPassword(password);
		
		LegalBodyDAO legalDao=new LegalBodyDAOImpl();
		user = legalDao.getUser(user);
		
		
		if(user!=null){
			HttpSession session=request.getSession(true);
			session.setAttribute("user", user);
			request.getRequestDispatcher("/pages/legal_login_success.jsp").forward(request,response);
		}
		else{
			response.sendRedirect("/pages/legal_login_form.jsp");
		}
	}

}
