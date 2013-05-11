package com.lftechnology.hackathon.drugzone.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.google.gson.Gson;
import com.lftechnology.hackathon.drugzone.dao.UserDAO;
import com.lftechnology.hackathon.drugzone.dao.UserDAOImpl;

/**
 * Servlet implementation class AutoComplete
 */
@WebServlet("/AutoComplete")
public class AutoComplete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutoComplete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String term=request.getParameter("term");
		
		UserDAO userdao = new UserDAOImpl();
				
		
		List<String> codes=userdao.getCodes(term);
		Gson gson=new Gson();
		String json=gson.toJson(codes);
		response.setContentType("application/json");
		response.getWriter().println(json);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
