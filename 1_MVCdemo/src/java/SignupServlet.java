import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBOperation.DBOperation;

/**
 *
 * @author limch
 */
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nameSignup = request.getParameter("nameSignup");
        String passSignup = request.getParameter("passSignup");
        DBOperation dbo = new DBOperation();
        dbo.Signup(nameSignup, passSignup);
        PrintWriter out = response.getWriter();
        out.println("<p>Register Success</p>");
        response.sendRedirect("home.jsp");
    }
}