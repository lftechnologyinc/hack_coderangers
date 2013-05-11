package com.lftechnology.hackathon.drugzone.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAO;
import com.lftechnology.hackathon.drugzone.dao.LegalBodyDAOImpl;
import com.lftechnology.hackathon.drugzone.dao.UserDAO;
import com.lftechnology.hackathon.drugzone.dao.UserDAOImpl;
import com.lftechnology.hackathon.drugzone.dto.Complain;

/**
 * Servlet implementation class Complain
 */
@WebServlet("/ComplainView")
public class ComplainView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplainView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LegalBodyDAO legalDao=new LegalBodyDAOImpl();
		List<Complain> complains = legalDao.getComplains();
		request.setAttribute("complains", complains);
		request.getRequestDispatcher("/pages/complain_view.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Complain complain=new Complain();
		
		complain.setPharmacyName(request.getParameter("p_name"));
		complain.setAddress(request.getParameter("p_address"));
		complain.setHospitalName(request.getParameter("hospital_clinic"));
		complain.setEmail(request.getParameter("u_email"));
		complain.setPhoneNumber(request.getParameter("u_phone"));
		complain.setDrugCode(request.getParameter("code"));
		
		UserDAO userdao = new UserDAOImpl();
		userdao.passComplain(complain);
		
		response.sendRedirect("pages/complainfiled.jsp");
		
		
	}

}
