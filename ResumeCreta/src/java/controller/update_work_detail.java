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
public class update_work_detail extends HttpServlet 
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
            // experience
            String workexperience=null;
            String project_1=null,projectdate_1=null,work_1=null,worklink_1=null;
            String project_2=null,projectdate_2=null,work_2=null,worklink_2=null;
            String project_3=null,projectdate_3=null,work_3=null,worklink_3=null;
            String project_4=null,projectdate_4=null,work_4=null,worklink_4=null;
            String project_5=null,projectdate_5=null,work_5=null,worklink_5=null;
            String project_6=null,projectdate_6=null,work_6=null,worklink_6=null;
            String project_7=null,projectdate_7=null,work_7=null,worklink_7=null;
            String cv_updatedate=null;
            // update field
            String mobile=null;
            String pages = null;
            // ezperience
            workexperience = request.getParameter("workexperience");
            project_1 = request.getParameter("project_1");
            projectdate_1 = request.getParameter("projectdate_1");
            work_1 = request.getParameter("work_1");
            worklink_1 = request.getParameter("worklink_1");
            project_2 = request.getParameter("project_2");
            projectdate_2 = request.getParameter("projectdate_2");
            work_2 = request.getParameter("work_2");
            worklink_2 = request.getParameter("worklink_2");
            project_3 = request.getParameter("project_3");
            projectdate_3 = request.getParameter("projectdate_3");
            work_3 = request.getParameter("work_3");
            worklink_3 = request.getParameter("worklink_3");
            project_4 = request.getParameter("project_4");
            projectdate_4 = request.getParameter("projectdate_4");
            work_4 = request.getParameter("work_4");
            worklink_4 = request.getParameter("worklink_4");
            project_5 = request.getParameter("project_5");
            projectdate_5 = request.getParameter("projectdate_5");
            work_5 = request.getParameter("work_5");
            worklink_5 = request.getParameter("worklink_5");
            project_6 = request.getParameter("project_6");
            projectdate_6 = request.getParameter("projectdate_6");
            work_6 = request.getParameter("work_6");
            worklink_6 = request.getParameter("worklink_6");
            project_7 = request.getParameter("project_7");
            projectdate_7 = request.getParameter("projectdate_7");
            work_7 = request.getParameter("work_7");
            worklink_7 = request.getParameter("worklink_7");
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
                // experience data
                P.setWorkexperience(workexperience);
                P.setProject_1(project_1);
                P.setProjectdate_1(projectdate_1);
                P.setWork_1(work_1);
                P.setWorklink_1(worklink_1);
                P.setProject_2(project_2);
                P.setProjectdate_2(projectdate_2);
                P.setWork_2(work_2);
                P.setWorklink_2(worklink_2);
                P.setProject_3(project_3);
                P.setProjectdate_3(projectdate_3);
                P.setWork_3(work_3);
                P.setWorklink_3(worklink_3);
                P.setProject_4(project_4);
                P.setProjectdate_4(projectdate_4);
                P.setWork_4(work_4);
                P.setWorklink_4(worklink_4);
                P.setProject_5(project_5);
                P.setProjectdate_5(projectdate_5);
                P.setWork_5(work_5);
                P.setWorklink_5(worklink_5);
                P.setProject_6(project_6);
                P.setProjectdate_6(projectdate_6);
                P.setWork_6(work_6);
                P.setWorklink_6(worklink_6);
                P.setProject_7(project_7);
                P.setProjectdate_7(projectdate_7);
                P.setWork_7(work_7);
                P.setWorklink_7(worklink_7);
                P.setCv_updatedate(cv_updatedate);
                // update field
                P.setMobile(mobile);
                if(pd.updatework_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Experience & work / job detail updated.<br>"
                                        + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("work_detail"))
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "Experience & work / job detail updated.<br>"
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