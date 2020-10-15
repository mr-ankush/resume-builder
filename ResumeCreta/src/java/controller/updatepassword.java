package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class updatepassword extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Update | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        String mobile;
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        session.setAttribute("msg",
                "Update password carefully,<br>"
                        + "Password field is case-sensitive.");
        session.setAttribute("mobile",mobile);
        response.sendRedirect("profile/update/password/");
        out.println("</body>");
        out.println("</html>"); 
    }
}