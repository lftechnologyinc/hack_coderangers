package com.lftechnology.hackathon.drugzone.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lftechnology.hackathon.drugzone.dao.UserDAO;
import com.lftechnology.hackathon.drugzone.dao.UserDAOImpl;
import com.lftechnology.hackathon.drugzone.dto.Complain;

/**
 * Servlet implementation class Complain
 */
@WebServlet("/ComplainDrug")
public class ComplainDrug extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplainDrug() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
