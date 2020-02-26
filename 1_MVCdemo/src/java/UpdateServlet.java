import DBOperation.DBOperation;
import DBOperation.student;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("student_id");
        String name = request.getParameter("student_name");
        System.out.println(id + " : " +  name);
        student student = new student(id, name);

        DBOperation dbOperation = new DBOperation();
        boolean success = dbOperation.updateRecord(student);

        if(success){
//            request.setAttribute("student",student);
            response.sendRedirect("ViewAllServlet");
//            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd = request.getRequestDispatcher("Failed.jsp");
            rd.forward(request,response);
        }
    }
}