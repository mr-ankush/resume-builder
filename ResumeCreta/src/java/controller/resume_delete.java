package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class resume_delete extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Delete | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        String mobile;
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        //session.setAttribute("msg",
        //        "<big><b><strong>Alert!</strong> Don't deleted your profile, only hide profile's.</b></big><p><strong>Info:</strong> All CV/Resume profile information not changable. Only few information is changable, that's profile hide only, don't delete it.</p>");
        session.setAttribute("mobile",mobile);
        response.sendRedirect("profile/delete/");
        out.println("</body>");
        out.println("</html>"); 
    }
}