//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class LoginServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//
//        DBOperation dbOperation = new DBOperation();
//        if(dbOperation.checkUser(username,password)){
//            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
//            rd.forward(request,response);
//        }
//        else{
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request,response);
//        }
//    }
//}
