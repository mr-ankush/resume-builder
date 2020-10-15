package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class check_qa extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Reset Password | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>");
        String mobile,forgetque,forgetans;
        mobile = request.getParameter("mobile");
        forgetque = request.getParameter("forgetque");
        forgetans = request.getParameter("forgetans");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(P.getForgetque().equalsIgnoreCase(forgetque) && P.getForgetans().equals(forgetans))
        {
            session.setAttribute("msg",
                "DON'T REFRESH WINDOW.<br>"
                    + "Set new password (Password must contain uppercase, lowercase, number/specialchar & min 8 chars).");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("reset/");
        }
        else
        {
            session.setAttribute("msg",
                    "Password is incorrect.<br>"
                        + "Fill correct security answer, answer is case-sensitive.");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("q_a/");
        }
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        out.println("</body>");
        out.println("</html>"); 
    }
}