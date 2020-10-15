package controller;
import com.google.zxing.multi.qrcode.QRCodeMultiReader;
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
public class oldacc extends HttpServlet 
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
            String isd=null,mobile=null,email=null,password=null,forgetque=null,
                    forgetans=null,v_msg=null,v_date=null;
            isd = request.getParameter("isd");
            mobile = request.getParameter("mobile");
            email = request.getParameter("email");
            password = request.getParameter("password");
            forgetque = request.getParameter("forgetque");
            forgetans = request.getParameter("forgetans");
            ProfileDAO pd = new ProfileDAO(); //call method
            QRcodeDAO qd = new QRcodeDAO();
            Qr Q = new Qr();
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
                P.getV_msg();
                P.getV_date();
                if(pd.restoreuserdata(P))
                {
                    pd.deleteuserbackupdata(mobile);
                    pd.updatelogin_detail(P);
                    Q.setQr_id(mobile);
                    Q.setQr_status("deactivate");
                    Q.setQr_url("http://www.resumecreta.com:8084/ResumeCreta/profile?cv="+mobile);
                    qd.insertQR(Q);
                    //out.println("Record Inserted.");
                    session.setAttribute("msg",
                        "You have been successfully recover account with "+P.getMobile()+",<br>"+
                            "Please Log-In & use resume template profile.");
                    response.sendRedirect("login/");
                }
                else
                {
                    //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
                    session.setAttribute("msg",
                        "There is an technical problem in Sign-Up,<br>"+
                            "Try after some time.");
                        response.sendRedirect("signup/");
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