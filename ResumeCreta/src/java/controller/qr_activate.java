package controller;
import dao.QRcodeDAO;
import model.Qr;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class qr_activate extends HttpServlet 
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
            out.println("<title>Link Generate | Resume CRETA</title>");            
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            // fields
            // update field
            String mobile=null;
            String qr_id=null;
            String qr_status="activate";
            // update data
            // url generate
            qr_id = request.getParameter("qr_id");
            mobile = request.getParameter("qr_id");
            QRcodeDAO qd = new QRcodeDAO(); //call method            
            Qr Q = new Qr();
            if(qr_id!=null)
            {
                //out.println(username);
                // data
                qd.generateQR(qr_id);
                Q.setQr_status(qr_status);
                Q.setQr_id(qr_id);
                qd.updateQr_status(Q);
                //out.println("Record Inserted.");
                session.setAttribute("msg",
                        "QR-Code generated.<br>"
                                + "Share & use it.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/menu/");
            }
            else
            {
                //out.println("Error.");
                session.setAttribute("msg",
                            "There is an technical error in generating QR-Code,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/qr/");
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