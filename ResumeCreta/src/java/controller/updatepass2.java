package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class updatepass2 extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Update | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>");
        String currentpassword,forgetque,forgetans;
        String mobile;
        currentpassword = request.getParameter("currentpassword");
        forgetque = request.getParameter("forgetque");
        forgetans = request.getParameter("forgetans");
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(P.getPassword().equalsIgnoreCase(currentpassword))
        {
            if(P.getForgetque().equalsIgnoreCase(forgetque) && P.getForgetans().equals(forgetans))
            {
                session.setAttribute("msg",
                    "Security password not updated.<br>"
                        + "Make security answer new or change question, It is already.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/password/");
            }
            else
            {
                P.setForgetque(forgetque);
                P.setForgetans(forgetans);
                P.setMobile(mobile);
                if(pd.updatepasscode_detail(P))
                {
                    session.setAttribute("msg",
                        "Security password has been updated.<br>"
                            + "Security password is useful in case of forget password or lost password.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/menu/");
                }
                else
                {
                    session.setAttribute("msg",
                            "Password not updated.<br>"
                                + "There is an technical issue, Retry after some time.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/password/");
                }
            }
        }
        else
        {
            session.setAttribute("msg",
                "Current password is incorrect.<br>"
                        + "Password field is case-sensitive.");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("profile/update/password/");
        }
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        out.println("</body>");
        out.println("</html>"); 
    }
}