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
@MultipartConfig(maxFileSize = 16177215)      // 16MB Data
public class upload extends HttpServlet 
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
            out.println("<title>Upload | Resume CRETA</title>");            
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            // fields           
            // cv detail database
            String cv_type=null,cv_createdate=null,cv_updatedate=null,cv_theme=null,cv_designation=null;
            // personal detail database
            String firstname=null,lastname=null,f_name=null,f_title=null,
                    m_name=null,m_title=null,dob=null,
                    dob_date=null,dob_month=null,dob_year=null,gender=null,
                    altmobile=null,la_city=null,la_state=null,la_country=null,
                    nationality=null,permanentadd=null;
            // language known database
            String lk_1=null,lk_2=null,lk_3=null,lk_4=null,lk_5=null;
            String lkv_1=null,lkv_2=null,lkv_3=null,lkv_4=null,lkv_5=null;
            // skills database
            String s_1=null,s_2=null,s_3=null,s_4=null,s_5=null,s_6=null,s_7=null,
                    s_8=null,s_9=null,s_10=null,s_11=null,s_12=null,s_13=null,
                    s_14=null,s_15=null;
            String sv_1=null,sv_2=null,sv_3=null,sv_4=null,sv_5=null,sv_6=null,sv_7=null,
                    sv_8=null,sv_9=null,sv_10=null,sv_11=null,sv_12=null,sv_13=null,
                    sv_14=null,sv_15=null;
            // behaviour & attitude database
            String ba_1=null,ba_2=null,ba_3=null,ba_4=null,ba_5=null,ba_6=null;
            // interest & hobby database
            String ih_1=null,ih_2=null,ih_3=null,ih_4=null,ih_5=null,ih_6=null;
            // objecttive & career abstract database
            String objective=null;
            // educational detail database
            String degree_1=null,affiliate_1=null,institute_1=null,score_1=null,session_1=null;
            String degree_2=null,affiliate_2=null,institute_2=null,score_2=null,session_2=null;
            String degree_3=null,affiliate_3=null,institute_3=null,score_3=null,session_3=null;
            String degree_4=null,affiliate_4=null,institute_4=null,score_4=null,session_4=null;
            String degree_5=null,affiliate_5=null,institute_5=null,score_5=null,session_5=null;
            String degree_6=null,affiliate_6=null,institute_6=null,score_6=null,session_6=null;
            // certificate database
            String certificate_1=null,certificate_2=null,certificate_3=null,
                    certificate_4=null,certificate_5=null,certificate_6=null;
            // experience
            String workexperience=null;
            String project_1=null,projectdate_1=null,work_1=null,worklink_1=null;
            String project_2=null,projectdate_2=null,work_2=null,worklink_2=null;
            String project_3=null,projectdate_3=null,work_3=null,worklink_3=null;
            String project_4=null,projectdate_4=null,work_4=null,worklink_4=null;
            String project_5=null,projectdate_5=null,work_5=null,worklink_5=null;
            String project_6=null,projectdate_6=null,work_6=null,worklink_6=null;
            String project_7=null,projectdate_7=null,work_7=null,worklink_7=null;
            // social media link database
            String linkedin=null,facebook=null,twitter=null,instagram=null;
            // visibility
            String visibility=null;
            // update field
            String mobile=null;
            // resume/cv data
            cv_type = request.getParameter("cv_type");
            DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss");    // date format
            LocalDateTime dtf = LocalDateTime.now();
            cv_createdate = dtf1.format(dtf);
            cv_updatedate = dtf1.format(dtf);
            cv_theme = request.getParameter("cv_theme");
            cv_designation = request.getParameter("cv_designation");
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
            // behaviour & attitude data
            ba_1 = request.getParameter("ba_1");
            ba_2 = request.getParameter("ba_2");
            ba_3 = request.getParameter("ba_3");
            ba_4 = request.getParameter("ba_4");
            ba_5 = request.getParameter("ba_5");
            ba_6 = request.getParameter("ba_6");
            // interest & hobby data
            ih_1 = request.getParameter("ih_1");
            ih_2 = request.getParameter("ih_2");
            ih_3 = request.getParameter("ih_3");
            ih_4 = request.getParameter("ih_4");
            ih_5 = request.getParameter("ih_5");
            ih_6 = request.getParameter("ih_6");
            // objective data
            objective = request.getParameter("objective");
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
            // certificate data
            certificate_1 = request.getParameter("certificate_1");
            certificate_2 = request.getParameter("certificate_2");
            certificate_3 = request.getParameter("certificate_3");
            certificate_4 = request.getParameter("certificate_4");
            certificate_5 = request.getParameter("certificate_5");
            certificate_6 = request.getParameter("certificate_6");
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
            // social media link data
            linkedin = request.getParameter("linkedin");
            twitter = request.getParameter("twitter");
            facebook = request.getParameter("facebook");
            instagram = request.getParameter("instagram");
            // visibility
            visibility = request.getParameter("visibility");
            // update data
            mobile = request.getParameter("mobile");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method            
            if(altmobile!=null)
            {
                // data
                // resume/cv data
                P.setCv_type(cv_type);
                P.setCv_createdate(cv_createdate);
                P.setCv_updatedate(cv_updatedate);
                P.setCv_theme(cv_theme);
                P.setCv_designation(cv_designation);
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
                // language known
                P.setLk_1(lk_1);
                P.setLk_2(lk_2);
                P.setLk_3(lk_3);
                P.setLk_4(lk_4);
                P.setLk_5(lk_5);
                // language percentage known
                P.setLkv_1(lkv_1);
                P.setLkv_2(lkv_2);
                P.setLkv_3(lkv_3);
                P.setLkv_4(lkv_4);
                P.setLkv_5(lkv_5);
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
                // behaviour & attitude data
                P.setBa_1(ba_1);
                P.setBa_2(ba_2);
                P.setBa_3(ba_3);
                P.setBa_4(ba_4);
                P.setBa_5(ba_5);
                P.setBa_6(ba_6);
                // intereset & hobby data
                P.setIh_1(ih_1);
                P.setIh_2(ih_2);
                P.setIh_3(ih_3);
                P.setIh_4(ih_4);
                P.setIh_5(ih_5);
                P.setIh_6(ih_6);
                // objective data
                P.setObjective(objective);
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
                // certificate data
                P.setCertificate_1(certificate_1);
                P.setCertificate_2(certificate_2);
                P.setCertificate_3(certificate_3);
                P.setCertificate_4(certificate_4);
                P.setCertificate_5(certificate_5);
                P.setCertificate_6(certificate_6);
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
                // social media link data
                P.setLinkedin(linkedin);
                P.setTwitter(twitter);
                P.setFacebook(facebook);
                P.setInstagram(instagram);
                // visibility data
                P.setVisibility(visibility);
                // update field
                P.setMobile(mobile);
                if(pd.updateprofiledata(P)){
                    //out.println("Record Inserted.");
                    session.setAttribute("msg",
                            "You have been successfully setup your profile,<br>"
                                    + "Share link to send CV/Resume!!!");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/menu/");
                }
                else{
                    //out.println("Record not Inserted.");
                    session.setAttribute("msg",
                            "There is an technical error to setup your profile,<br>"
                            + "Retry after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/edit/");
                }
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