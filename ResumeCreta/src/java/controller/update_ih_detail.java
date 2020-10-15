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
public class update_ih_detail extends HttpServlet 
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
            // interest & hobby database
            String ih_1=null,ih_2=null,ih_3=null,ih_4=null,ih_5=null,ih_6=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages = null;
            // resume/cv data
            // behaviour & attitude data
            ih_1 = request.getParameter("ih_1");
            ih_2 = request.getParameter("ih_2");
            ih_3 = request.getParameter("ih_3");
            ih_4 = request.getParameter("ih_4");
            ih_5 = request.getParameter("ih_5");
            ih_6 = request.getParameter("ih_6");
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
                // behaviour & attitude data
                P.setIh_1(ih_1);
                P.setIh_2(ih_2);
                P.setIh_3(ih_3);
                P.setIh_4(ih_4);
                P.setIh_5(ih_5);
                P.setIh_6(ih_6);
                P.setCv_updatedate(cv_updatedate);
                // update field
                P.setMobile(mobile);
                if(pd.updateih_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Profile's interset & hobby detail updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("ih_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Profile's interset & hobby detail updated.<br>"
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