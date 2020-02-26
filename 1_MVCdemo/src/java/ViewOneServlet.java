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

public class ViewOneServlet extends HttpServlet {
    
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBOperation ops = new DBOperation();
        String id = request.getParameter("idView");
        student student = null;
        try {
            student = ops.ViewRecord(id);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        request.setAttribute("student", student);
        RequestDispatcher rd = request.getRequestDispatcher("viewone.jsp");
        rd.forward(request,response);
    }
}