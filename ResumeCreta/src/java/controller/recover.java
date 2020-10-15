package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class recover extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Recover Account | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        String mobile;
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(P==null)
        {
            //out.println(P.getMobile());
            session.setAttribute("msg",
                "Opps...<br>"+
                    "Mobile number is not match with any user-id.");
            response.sendRedirect("recover/");
            
        }
        else
        {
            session.setAttribute("mobile",P.getMobile());
            session.setAttribute("msg",
                "Welcome "+P.getEmail()+",<br>"+
                                "Account verified by mobile number "+P.getMobile()+".");
            response.sendRedirect("q_a/");
        }
        out.println("</body>");
        out.println("</html>"); 
    }
}