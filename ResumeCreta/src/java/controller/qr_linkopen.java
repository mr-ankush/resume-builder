package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class qr_linkopen extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Link Generate | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>");
        String mobile;
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        session.setAttribute("mobile",mobile);
        session.setAttribute("msg",
                "Welcome "+P.getEmail()+",<br>"+
                                "Generate your own QR-Code.");
        response.sendRedirect("profile/qr/");
        out.println("</body>");
        out.println("</html>"); 
    }
}