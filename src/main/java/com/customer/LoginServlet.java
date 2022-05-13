package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		try {
		List<Customer> cusDetails = CustomerDBUtil.validate(name, email);	
		request.setAttribute("cusDetails", cusDetails);
		}
		catch (Exception e) {
		     e.printStackTrace();
		}
		
	     RequestDispatcher dis  = request.getRequestDispatcher("useraccount.jsp");
		 dis.forward(request, response);
		
	
	}

}
