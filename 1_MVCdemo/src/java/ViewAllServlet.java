import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewAllServlet extends HttpServlet {
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBOperation dbOperation = new DBOperation();

        ArrayList<Student> students = dbOperation.viewAll();

        request.setAttribute("studentList",students);
        RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
        rd.forward(request,response);
    }
}
