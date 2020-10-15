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
public class update_lk_detail extends HttpServlet 
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
            // language known database
            String lk_1=null,lk_2=null,lk_3=null,lk_4=null,lk_5=null;
            String lkv_1=null,lkv_2=null,lkv_3=null,lkv_4=null,lkv_5=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages=null;
            // language known data
            lk_1 = request.getParameter("lk_1");
            lk_2 = request.getParameter("lk_2");
            lk_3 = request.getParameter("lk_3");
            lk_4 = request.getParameter("lk_4");
            lk_5 = request.getParameter("lk_5");
            // language known percentage
            lkv_1 = request.getParameter("lkv_1");
            lkv_2 = request.getParameter("lkv_2");
            lkv_3 = request.getParameter("lkv_3");
            lkv_4 = request.getParameter("lkv_4");
            lkv_5 = request.getParameter("lkv_5");            
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
                // language known
                P.setLk_1(lk_1);
                P.setLk_2(lk_2);
                P.setLk_3(lk_3);
                P.setLk_4(lk_4);
                P.setLk_5(lk_5);
                P.setLkv_1(lkv_1);
                P.setLkv_2(lkv_2);
                P.setLkv_3(lkv_3);
                P.setLkv_4(lkv_4);
                P.setLkv_5(lkv_5);
                P.setCv_updatedate(cv_updatedate);                
                // update field
                P.setMobile(mobile);
                if(pd.updatelk_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Profile's language strength updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("lk_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Profile's language strength updated.<br>"
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