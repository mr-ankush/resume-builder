package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class updatepass1 extends HttpServlet
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
        String currentpassword, newpassword, confirmpassword;
        String mobile;
        currentpassword = request.getParameter("currentpassword");
        newpassword = request.getParameter("newpassword");
        confirmpassword = request.getParameter("confirmpassword");
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(P.getPassword().equals(currentpassword))
        {
            if(!newpassword.equals(confirmpassword))
            {
                session.setAttribute("msg",
                    "New password is not matched with confirm password.<br>"
                        + "Password field is case-sensitive.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/password/");
            }
            else
            {
                if(!currentpassword.equals(newpassword))
                {
                    P.setPassword(newpassword);
                    P.setMobile(mobile);
                    if(pd.updatepassword_detail(P))
                    {
                        session.setAttribute("msg",
                            "Password has been updated..<br>"
                                + "Password is effective after logout.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/menu/");
                    }
                    else
                    {
                        session.setAttribute("msg",
                            "Password not updated (current password & new password is same)<br>"
                                + "Create new password.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/password/");
                    }
                }
                else
                {
                    session.setAttribute("msg",
                        "Password not updated (current password & new password is same)<br>"
                            + "Create new password.");
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