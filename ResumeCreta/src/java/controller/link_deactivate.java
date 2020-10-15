package controller;
import dao.ProfileDAO;
import model.Profile;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class link_deactivate extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Link Generate | Resume CRETA</title>");
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            // fields
            String username=null;
            // update field
            String mobile=null;
            // update data
            mobile = request.getParameter("mobile");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method            
            if(mobile!=null)
            {
                //out.println(username);
                // data
                // url data
                P.setUsername(username);
                // update field
                P.setMobile(mobile);
                if(pd.updateusername(P)){
                    //out.println("Record Inserted.");
                    session.setAttribute("msg",
                            "Encrypt URL link is revoked.<br>"
                                    + "Create new encrypted link.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/link/");
                }
                else{
                    //out.println("Record not Inserted.");
                    session.setAttribute("msg",
                            "There is an technical error in creating URL,<br>"
                            + "Retry after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/link/");
                }
            }
            else
            {
                //out.println("Error.");
                session.setAttribute("msg",
                            "There is an technical error in updating profile,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/link/");
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}