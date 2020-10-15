package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class updateemail extends HttpServlet
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
        String currentemail,newemail,currentpassword;
        String mobile;
        currentemail = request.getParameter("currentemail");
        newemail = request.getParameter("newemail");
        currentpassword = request.getParameter("currentpassword");
        mobile = request.getParameter("mobile");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        if(P.getPassword().equalsIgnoreCase(currentpassword))
        {
            if(P.getEmail().equalsIgnoreCase(currentemail))
            {
                if(!currentemail.equalsIgnoreCase(newemail))
                {
                    P.setEmail(newemail);
                    P.setMobile(mobile);
                    if(pd.updateemail_detail(P))
                    {
                        session.setAttribute("msg",
                            "Email has been updated.<br>"
                                + "This change will appear on your resume.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/setting/");
                    }
                    else
                    {
                        session.setAttribute("msg",
                            "Email not updated.<br>"
                                + "There is an technical error in server, Retry after some time.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/setting/");
                    }
                }
                else
                {
                    session.setAttribute("msg",
                        "Email-Id not Updated.<br>"
                        + "New email-id are already in the database.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/update/setting/");
                }
            }
            else
            {
                session.setAttribute("msg",
                    "Current Email-Id is incorrect.<br>"
                        + "Re-enter email-id & try again.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/setting/");
            }
        }
        else
        {
            session.setAttribute("msg",
                "Password is incorrect.<br>"
                        + "Password field is case-sensitive.");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("profile/update/setting/");
        }
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        out.println("</body>");
        out.println("</html>"); 
    }
}