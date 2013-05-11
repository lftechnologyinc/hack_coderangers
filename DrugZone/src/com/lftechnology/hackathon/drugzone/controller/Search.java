package com.lftechnology.hackathon.drugzone.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAO;
import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAOImpl;
import com.lftechnology.hackathon.drugzone.dao.UserDAO;
import com.lftechnology.hackathon.drugzone.dao.UserDAOImpl;
import com.lftechnology.hackathon.drugzone.dto.Drug;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String drugCode=request.getParameter("code");
		UserDAO userdao = new UserDAOImpl();
		System.out.println("tesko baje");
		
		try
		{
		Drug drug=userdao.getDrug(drugCode);
		System.out.println("HEll");
		if(drug!=null)
		{request.setAttribute("drug",drug);
		request.getRequestDispatcher("/pages/user_valid.jsp").forward(request,response);}
		else
		{
			request.getRequestDispatcher("/pages/user_invalid.jsp").forward(request,response);
		}
		}
		catch(Exception e)
		{
			request.getRequestDispatcher("/pages/user_invalid.jsp").forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String drugCode=request.getParameter("code");
		UserDAO userdao = new UserDAOImpl();
		System.out.println("tesko baje");
		
		try
		{
		Drug drug=userdao.getDrug(drugCode);
		System.out.println("HEll");
		if(drug!=null)
		{
		request.setAttribute("drug",drug);
		request.getRequestDispatcher("/pages/user_valid.jsp").forward(request,response);}
		else
		{
			request.getRequestDispatcher("/pages/user_invalid.jsp").forward(request,response);
		}
		}
		catch(Exception e)
		{
			request.getRequestDispatcher("/pages/user_invalid.jsp").forward(request,response);
		}		
		
	}

}
