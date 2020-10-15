package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class reset_password extends HttpServlet
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
        String mobile, newpassword, confirmpassword;
        mobile = request.getParameter("mobile");
        newpassword = request.getParameter("newpassword");
        confirmpassword = request.getParameter("confirmpassword");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(mobile!=null)
        {
            if(!newpassword.equals(confirmpassword))
            {
                session.setAttribute("msg",
                    "New password is not matched with confirm password.<br>"
                        + "Password field is case-sensitive.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("reset/");
            }
            else
            {
                P.setPassword(newpassword);
                P.setMobile(mobile);
                if(pd.updatepassword_detail(P))
                {
                    session.setAttribute("msg",
                        "Welcome again,<br>"
                            + "Password has been changed.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/menu/");
                }
                else
                {
                    session.setAttribute("msg",
                        "Password not updated.<br>"
                            + "There is an technical error in server, Try again after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("reset/");
                }
            }
        }
        else
        {
            session.setAttribute("msg",
                "Password not Updated.<br>"
                        + "There is an technical error in server, Try againafter some time.");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("reset/");
        }
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        out.println("</body>");
        out.println("</html>"); 
    }
}