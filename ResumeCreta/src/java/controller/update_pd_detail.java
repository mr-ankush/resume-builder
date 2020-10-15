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
public class update_pd_detail extends HttpServlet 
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
            // personal detail database
            String firstname=null,lastname=null,f_name=null,f_title=null,
                    m_name=null,m_title=null,dob=null,
                    dob_date=null,dob_month=null,dob_year=null,gender=null,
                    altmobile=null,la_city=null,la_state=null,la_country=null,
                    nationality=null,permanentadd=null,cv_updatedate=null;
            // update field
            String mobile=null;
            String pages=null;
            // personal data
            firstname = request.getParameter("firstname");
            lastname = request.getParameter("lastname");
            f_title = request.getParameter("f_title");
            f_name = request.getParameter("f_name");
            f_name = f_title+" "+f_name;
            m_title = request.getParameter("m_title");
            m_name = request.getParameter("m_name");
            m_name = m_title+" "+m_name;
            dob = request.getParameter("dob");
            dob_date = dob.substring(8);
            dob_month = dob.substring(5,7);
            dob_year = dob.substring(0,4);
            gender = request.getParameter("gender");
            altmobile = request.getParameter("altmobile");
            la_city = request.getParameter("la_city");
            la_state = request.getParameter("la_state");
            la_country = request.getParameter("la_country");
            nationality = request.getParameter("nationality");
            permanentadd = request.getParameter("permanentadd");
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
                // personal data
                P.setFirstname(firstname);
                P.setLastname(lastname);
                P.setF_name(f_name);
                P.setM_name(m_name);
                P.setDob_date(dob_date);
                P.setDob_month(dob_month);
                P.setDob_year(dob_year);
                P.setGender(gender);
                P.setAltmobile(altmobile);
                P.setLa_city(la_city);
                P.setLa_state(la_state);
                P.setLa_country(la_country);
                P.setNationality(nationality);
                P.setPermanentadd(permanentadd);
                P.setCv_updatedate(cv_updatedate);
                // update field
                P.setMobile(mobile);
                if(pd.updatepd_detail(P))
                {
                    if(pages==null)
                    {
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                            "Profile's personal detail updated.<br>"
                                    + "Last updated on "+cv_updatedate);
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/");
                    }
                    else if(pages.equalsIgnoreCase("pd_detail"))
                    {
                        session.setAttribute("msg",
                            "Profile's personal detail updated.<br>"
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