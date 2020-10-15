package controller;
import dao.ProfileDAO;
import dao.QRcodeDAO;
import java.io.*;
import java.util.Random;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
import model.Qr;
public class updatemobile extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Update | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>");
        String currentmobile,newmobile,currentpassword;
        String mobile;
        String username;
        currentmobile = request.getParameter("currentmobile");
        newmobile = request.getParameter("newmobile");
        currentpassword = request.getParameter("currentpassword");
        mobile = request.getParameter("mobile");
        // url generate
        int i,lenght = 13;
        //String NUMBERS1 = "ABcdEFgfIJklMNopQRstUVwxYZabCDefGHijKLmnOPqrSTuvWXyz9876543210123456789"; 
        //String NUMBERS3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        String NUMBERS = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZZ0123456789";
        Random random = new Random();
        char[] url = new char[lenght];
        int index = 0;
        for(i=0; i<lenght; i++)
        {
            url[i] = NUMBERS.charAt(random.nextInt(NUMBERS.length()));
        }
        username = url[0]+""+url[1]+""+url[2]+""+url[3]+""+url[4]+""+url[5]
            +""+url[6]+""+url[7]+""+url[8]+""+url[9]+""+url[10]+""+url[11]+""+url[12];
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        // qr also update
        QRcodeDAO qd = new QRcodeDAO();
        Qr Q = new Qr();
        if(P.getPassword().equalsIgnoreCase(currentpassword))
        {
            if(P.getMobile().equalsIgnoreCase(currentmobile))
            {
                if(!currentmobile.equalsIgnoreCase(newmobile))
                {
                    if(!ProfileDAO.checkuser(newmobile))
                    {
                        P.setUsername(username);
                        P.setMobile(mobile);
                        Q.setQr_username(username);
                        Q.setQr_id(mobile);
                        if(pd.updateusername(P))
                        {
                            // qr username update
                            qd.updateQr_username(Q);
                            P.setMobile(newmobile);
                            P.setUsername(username);
                            P.setEmail(P.getEmail());
                            if(pd.updatemobile_detail(P))
                            {
                                // update qr data
                                Q.setQr_id(newmobile);
                                Q.setQr_url("http://www.resumecreta.com:8084/ResumeCreta/profile?cv="+newmobile);
                                Q.setQr_username(username);
                                qd.updateQr_id(Q);
                                //deactivate username
                                P.setUsername(null);
                                P.setMobile(newmobile);
                                pd.updateusername(P);
                                // deactivate qr_username
                                Q.setQr_username(null);
                                Q.setQr_id(newmobile);
                                qd.updateQr_username(Q);
                                // status update
                                Q.setQr_status("deactivate");
                                Q.setQr_id(newmobile);
                                qd.updateQr_status(Q);
                                // update photo
                                //blob_image
                                // update field
                                P.setPhoto(null);
                                // update field
                                P.setMobile(newmobile);
                                // update data
                                pd.updatephoto_detail(P);
                                session.setAttribute("msg",
                                    "Mobile number has been updated.<br>"
                                        + "This change will appear on your resume and login settings will change.");
                                session.setAttribute("mobile",newmobile);
                                response.sendRedirect("profile/update/setting/");
                            }
                            else
                            {
                                P.setUsername(null);
                                P.setMobile(newmobile);
                                pd.updateusername(P);
                                session.setAttribute("msg",
                                    "Mobile number not updated.<br>"
                                        + "There is an technical error in server, Retry after some time.");
                                session.setAttribute("mobile",mobile);
                                response.sendRedirect("profile/update/setting/");
                            }
                        }
                        else
                        {
                            session.setAttribute("msg",
                                    "mobile number not updated.<br>"
                                        + "There is an technical error in server, Retry after some time.");
                            session.setAttribute("mobile",mobile);
                            response.sendRedirect("profile/update/setting/");
                        }
                    }
                    else
                    {
                        session.setAttribute("msg",
                            "New mobile number already registered with another user profile.<br>"
                                + "Enter your personal number.");
                        session.setAttribute("mobile",mobile);
                        response.sendRedirect("profile/update/setting/");
                    }
                }
                else
                {
                    session.setAttribute("msg",
                        "Mobile number not Updated.<br>"
                        + "New mobile number are already in the database.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/update/setting/");
                }
            }
            else
            {
                session.setAttribute("msg",
                    "Current mobile number is incorrect.<br>"
                        + "Re-enter mobile number & try again.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/setting/");
            }
        }
        else
        {
            session.setAttribute("msg",
                "Password is incorrect.<br>"
                        + "Password field is case-sensitive.");
            session.setAttribute("mobile",mobile);
            response.sendRedirect("profile/update/setting/");
        }
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        out.println("</body>");
        out.println("</html>"); 
    }
}