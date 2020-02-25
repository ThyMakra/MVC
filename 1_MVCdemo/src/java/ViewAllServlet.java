import DBOperation.DBOperation;
import DBOperation.student;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewAllServlet extends HttpServlet {
    
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBOperation ops = new DBOperation();
        ArrayList<student> students = new ArrayList();
        try {
            students = ops.viewAllRecords();
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
        request.setAttribute("studentList", students);
        RequestDispatcher rd = request.getRequestDispatcher("viewall.jsp");
        rd.forward(request,response);
    }
}