package controller;
import dao.ProfileDAO;
import dao.QRcodeDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Profile;
import model.Qr;
@MultipartConfig(maxFileSize = 16177215)      // 16MB Data
public class signup extends HttpServlet 
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
            out.println("<title>Signup | Resume CRETA</title>");            
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            // fields
            String isd=null,mobile=null,email=null,password=null,forgetque=null,forgetans=null;
            isd = request.getParameter("isd");
            mobile = request.getParameter("mobile");
            email = request.getParameter("email");
            password = request.getParameter("password");
            forgetque = request.getParameter("forgetque");
            forgetans = request.getParameter("forgetans");
            ProfileDAO pd = new ProfileDAO(); //call method
            if(mobile!=null)
            {
                Profile P = new Profile();
                // fields
                P.setIsd(isd);
                P.setMobile(mobile);
                P.setEmail(email);
                P.setPassword(password);
                P.setForgetque(forgetque);
                P.setForgetans(forgetans);
                Profile P2;
                P2 = pd.searchprofilebackupdatabymobile(mobile);
                if(P2==null)
                {
                    if(pd.insertsignupdata(P))
                    {
                        String qr_id=null, qr_status=null, qr_url=null;
                        qr_id = mobile;
                        qr_status = "deactivate";
                        qr_url = "http://www.resumecreta.com:8084/ResumeCreta/profile?cv="+qr_id;
                        QRcodeDAO qd = new QRcodeDAO();
                        Qr Q = new Qr();
                        Q.setQr_id(qr_id);
                        Q.setQr_status(qr_status);
                        Q.setQr_url(qr_url);
                        qd.insertQR(Q);
                        //out.println("Record Inserted.");
                        session.setAttribute("msg",
                                "You have been successfully registered with "+P.getMobile()+",<br>"+
                                        "Please Log-In & use resume template profile.");
                        response.sendRedirect("login/");
                    }
                    else
                    {
                        Profile P1;
                        P1 = pd.searchprofiledatabymobile(mobile);
                        if(P1==null)
                        {
                            //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
                            session.setAttribute("msg",
                                    "There is an technical problem in Sign-Up,<br>"+
                                        "Try after some time.");
                            response.sendRedirect("signup/");
                        }
                        else
                        {
                            //out.println("Record not Inserted."+P.getMobile()+","+P.getEmail());
                            session.setAttribute("msg",
                                    "You have already registered with "+P.getMobile()+",<br>"+
                                        "Please <a href='#' onclick='form1()'><b style='color:blue;'>Login</b></a> & use resume template profile.");
                            response.sendRedirect("signup/");
                        }
                    }
                }
                else
                {
                    session.setAttribute("isd",isd);
                    session.setAttribute("mobile",mobile);
                    session.setAttribute("email",email);
                    session.setAttribute("password",password);
                    session.setAttribute("forgetque",forgetque);
                    session.setAttribute("forgetans",forgetans);
                    response.sendRedirect("account/backup/");
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