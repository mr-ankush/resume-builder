package controller;
import dao.ProfileDAO;
import model.Profile;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class update_sml_detail extends HttpServlet 
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
            out.println("<title>Update | Resume CRETA</title>");            
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            // fields
            // social media link database
            String linkedin=null,facebook=null,twitter=null,instagram=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages = null;
            // social media link data
            linkedin = request.getParameter("linkedin");
            twitter = request.getParameter("twitter");
            facebook = request.getParameter("facebook");
            instagram = request.getParameter("instagram");
            DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss");    // date format
            LocalDateTime dtf = LocalDateTime.now();
            cv_updatedate = dtf1.format(dtf);
            // update data
            mobile = request.getParameter("mobile");
            pages = request.getParameter("pages");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method            
            if(mobile!=null)
            {
                // data
                // social media link data
                P.setLinkedin(linkedin);
                P.setTwitter(twitter);
                P.setFacebook(facebook);
                P.setInstagram(instagram);
                P.setCv_updatedate(cv_updatedate);
                // update field
                P.setMobile(mobile);
                if(pd.updatesml_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Social media link detail updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("sml_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Social media link detail updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/menu/");
                    }
                }
                else
                {
                    //out.println("Record not Inserted.");
                    session.setAttribute("msg",
                            "There is an technical error in updating profile,<br>"
                            + "Retry after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/update/");
                }
            }
            else
            {
                //out.println("Record not Inserted.");
                session.setAttribute("msg",
                            "There is an technical error in updating profile,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/");
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