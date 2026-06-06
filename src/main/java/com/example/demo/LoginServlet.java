package com.example.demo;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
 
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
 
        if ("admin".equals(userId)
&& "admin123".equals(password)) {
 
            response.sendRedirect("home.jsp");
 
        } else {
 
            response.getWriter()
                    .println("<h3>Invalid Credentials</h3>");
        }
    }
}