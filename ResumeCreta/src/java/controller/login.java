package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class login extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String mobile, password;
        mobile = request.getParameter("mobile");
        password = request.getParameter("password");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Login | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        ProfileDAO pd = new ProfileDAO();
        if(ProfileDAO.checklogin(mobile,password))
        {
            Profile P;
            P = pd.searchprofiledatabymobile(mobile);
            if(P.getAltmobile()==null)
            {
                //out.println("Valid User : "+mobile+" - "+password);
                session.setAttribute("mobile",mobile);
                session.setAttribute("msg",
                                "Welcome <b>"+P.getEmail()+"</b>,<br>"
                                        + "Setup your profile first.");
                response.sendRedirect("profile/edit/");
            }
            else
            {
                session.setAttribute("mobile",mobile);
                session.setAttribute("msg",
                                "Hii <b>"+P.getEmail()+"</b>,<br>"
                                        + "Last profile updated on "+P.getCv_updatedate()+".");
                response.sendRedirect("profile/menu/");
            }
        }
        else
        {
            //out.println("In-Valid User : "+mobile+" - "+password);
            Profile P1;
            P1 = pd.searchprofiledatabymobile(mobile);
            if(P1==null)
            {
                //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
                session.setAttribute("msg",
                        mobile+" is not registered.<br>"+
                                "<a href='#' onclick='form2()'><b style='color:blue;'>Sign-up</b></a> first.");
                response.sendRedirect("login/");
            }
            else
            {
                session.setAttribute("msg",
                        "Password is incorrect,<br>"+
                                "Password is case-sensitive, try again.");
                response.sendRedirect("login/");
            }
        }
        out.println("</body>");
        out.println("</html>"); 
    }
}