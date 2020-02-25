/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBOperation.DBOperation;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author limch
 */
public class login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        DBOperation DBO = new DBOperation();
        if (DBO.checkUser(username, password)){
            RequestDispatcher rs = request.getRequestDispatcher("Option.jsp");
            rs.forward(request, response);
        } else{
            System.out.println("Username or Password incorrect");
        }
    }
}