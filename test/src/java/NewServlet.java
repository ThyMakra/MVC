/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBOperation.DBOperation;
import DBOperation.student;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author limch
 */
public class NewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        student s = new student();
        DBOperation operation = new DBOperation();
        String option = request.getParameter("option");
        if (option.equals("insert")){
            String idInsert = request.getParameter("idInsert");
            String nameInsert = request.getParameter("nameInsert");
            s.setId(idInsert);
            s.setName(nameInsert);
            operation.insertRecord(s);
        } if (option.equals("select")){
            String id = request.getParameter("idSelect");
            s.setId(id);
            try {
                operation.ViewRecord();
            } catch (SQLException ex) {
                Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
