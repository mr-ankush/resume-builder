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
public class update_edu_detail extends HttpServlet 
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
            // educational detail database
            String degree_1=null,affiliate_1=null,institute_1=null,score_1=null,session_1=null;
            String degree_2=null,affiliate_2=null,institute_2=null,score_2=null,session_2=null;
            String degree_3=null,affiliate_3=null,institute_3=null,score_3=null,session_3=null;
            String degree_4=null,affiliate_4=null,institute_4=null,score_4=null,session_4=null;
            String degree_5=null,affiliate_5=null,institute_5=null,score_5=null,session_5=null;
            String degree_6=null,affiliate_6=null,institute_6=null,score_6=null,session_6=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages=null;
            // educational data
            degree_1 = request.getParameter("degree_1");
            affiliate_1 = request.getParameter("affiliate_1");
            institute_1 = request.getParameter("institute_1");
            score_1 = request.getParameter("score_1");
            session_1 = request.getParameter("session_1");
            degree_2 = request.getParameter("degree_2");
            affiliate_2 = request.getParameter("affiliate_2");
            institute_2 = request.getParameter("institute_2");
            score_2 = request.getParameter("score_2");
            session_2 = request.getParameter("session_2");
            degree_3 = request.getParameter("degree_3");
            affiliate_3 = request.getParameter("affiliate_3");
            institute_3 = request.getParameter("institute_3");
            score_3 = request.getParameter("score_3");
            session_3 = request.getParameter("session_3");
            degree_4 = request.getParameter("degree_4");
            affiliate_4 = request.getParameter("affiliate_4");
            institute_4 = request.getParameter("institute_4");
            score_4 = request.getParameter("score_4");
            session_4 = request.getParameter("session_4");
            degree_5 = request.getParameter("degree_5");
            affiliate_5 = request.getParameter("affiliate_5");
            institute_5 = request.getParameter("institute_5");
            score_5 = request.getParameter("score_5");
            session_5 = request.getParameter("session_5");
            degree_6 = request.getParameter("degree_6");
            affiliate_6 = request.getParameter("affiliate_6");
            institute_6 = request.getParameter("institute_6");
            score_6 = request.getParameter("score_6");
            session_6 = request.getParameter("session_6");
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
                // educational data
                P.setDegree_1(degree_1);
                P.setAffiliate_1(affiliate_1);
                P.setInstitute_1(institute_1);
                P.setScore_1(score_1);
                P.setSession_1(session_1);
                P.setDegree_2(degree_2);
                P.setAffiliate_2(affiliate_2);
                P.setInstitute_2(institute_2);
                P.setScore_2(score_2);
                P.setSession_2(session_2);
                P.setDegree_3(degree_3);
                P.setAffiliate_3(affiliate_3);
                P.setInstitute_3(institute_3);
                P.setScore_3(score_3);
                P.setSession_3(session_3);
                P.setDegree_4(degree_4);
                P.setAffiliate_4(affiliate_4);
                P.setInstitute_4(institute_4);
                P.setScore_4(score_4);
                P.setSession_4(session_4);
                P.setDegree_5(degree_5);
                P.setAffiliate_5(affiliate_5);
                P.setInstitute_5(institute_5);
                P.setScore_5(score_5);
                P.setSession_5(session_5);
                P.setDegree_6(degree_6);
                P.setAffiliate_6(affiliate_6);
                P.setInstitute_6(institute_6);
                P.setScore_6(score_6);
                P.setSession_6(session_6);
                P.setCv_updatedate(cv_updatedate);
                // update field
                P.setMobile(mobile);
                if(pd.updateedu_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Educational detail updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("edu_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Educational detail updated.<br>"
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