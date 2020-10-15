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
public class update_s_detail extends HttpServlet 
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
            // skills database
            String s_1=null,s_2=null,s_3=null,s_4=null,s_5=null,s_6=null,s_7=null,
                    s_8=null,s_9=null,s_10=null,s_11=null,s_12=null,s_13=null,
                    s_14=null,s_15=null;
            String sv_1=null,sv_2=null,sv_3=null,sv_4=null,sv_5=null,sv_6=null,sv_7=null,
                    sv_8=null,sv_9=null,sv_10=null,sv_11=null,sv_12=null,sv_13=null,
                    sv_14=null,sv_15=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages=null;
            // skills
            s_1 = request.getParameter("s_1");
            s_2 = request.getParameter("s_2");
            s_3 = request.getParameter("s_3");
            s_4 = request.getParameter("s_4");
            s_5 = request.getParameter("s_5");
            s_6 = request.getParameter("s_6");
            s_7 = request.getParameter("s_7");
            s_8 = request.getParameter("s_8");
            s_9 = request.getParameter("s_9");
            s_10 = request.getParameter("s_10");
            s_11 = request.getParameter("s_11");
            s_12 = request.getParameter("s_12");
            s_13 = request.getParameter("s_13");
            s_14 = request.getParameter("s_14");
            s_15 = request.getParameter("s_15");         
            // skills percentage
            sv_1 = request.getParameter("sv_1");
            sv_2 = request.getParameter("sv_2");
            sv_3 = request.getParameter("sv_3");
            sv_4 = request.getParameter("sv_4");
            sv_5 = request.getParameter("sv_5");
            sv_6 = request.getParameter("sv_6");
            sv_7 = request.getParameter("sv_7");
            sv_8 = request.getParameter("sv_8");
            sv_9 = request.getParameter("sv_9");
            sv_10 = request.getParameter("sv_10");
            sv_11 = request.getParameter("sv_11");
            sv_12 = request.getParameter("sv_12");
            sv_13 = request.getParameter("sv_13");
            sv_14 = request.getParameter("sv_14");
            sv_15 = request.getParameter("sv_15");
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
                // skills
                P.setS_1(s_1);
                P.setS_2(s_2);
                P.setS_3(s_3);
                P.setS_4(s_4);
                P.setS_5(s_5);
                P.setS_6(s_6);
                P.setS_7(s_7);
                P.setS_8(s_8);
                P.setS_9(s_9);
                P.setS_10(s_10);
                P.setS_11(s_11);
                P.setS_12(s_12);
                P.setS_13(s_13);
                P.setS_14(s_14);
                P.setS_15(s_15);
                // skills percentage
                P.setSv_1(sv_1);
                P.setSv_2(sv_2);
                P.setSv_3(sv_3);
                P.setSv_4(sv_4);
                P.setSv_5(sv_5);
                P.setSv_6(sv_6);
                P.setSv_7(sv_7);
                P.setSv_8(sv_8);
                P.setSv_9(sv_9);
                P.setSv_10(sv_10);
                P.setSv_11(sv_11);
                P.setSv_12(sv_12);
                P.setSv_13(sv_13);
                P.setSv_14(sv_14);
                P.setSv_15(sv_15);
                P.setCv_updatedate(cv_updatedate);                
                // update field
                P.setMobile(mobile);
                if(pd.updates_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Skiil profile updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("s_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Skiil profile updated.<br>"
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