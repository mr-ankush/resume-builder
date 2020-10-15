package controller;
import dao.ProfileDAO;
import model.Profile;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class link_activate extends HttpServlet 
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
            String username;
            // update field
            String mobile=null;
            // update data
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
            mobile = request.getParameter("mobile");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method            
            if(mobile!=null)
            {
                //out.println(username);
                // data
                // url data
                P.setUsername(username);
                // update field
                P.setMobile(mobile);
                if(pd.updateusername(P)){
                    //out.println("Record Inserted.");
                    session.setAttribute("msg",
                            "Encrypted URL link is ready to visible.<br>"
                                    + "Copy link & share it.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/link/");
                }
                else{
                    //out.println("Record not Inserted.");
                    session.setAttribute("msg",
                            "There is an technical error in creating URL,<br>"
                            + "Retry after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/link/");
                }
            }
            else
            {
                //out.println("Error.");
                session.setAttribute("msg",
                            "There is an technical error in updating profile,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/link/");
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