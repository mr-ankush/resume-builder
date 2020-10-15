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
public class update_photo_detail extends HttpServlet 
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
            //blob_image
            Part photo = null;
            // update field
            String mobile=null;
            String pages=null;
            // photo data
            photo = request.getPart("photo");
            // update data
            mobile = request.getParameter("mobile");
            pages = request.getParameter("pages");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method            
            if(mobile!=null)
            {
                // data
                // photo data
                InputStream is;    //image1 photo
                is = photo.getInputStream();
                P.setPhoto(is);
                // update field
                P.setMobile(mobile);
                if(pd.updatephoto_detail(P))
                {
                    //pd.deleteimage("C:/Users/Lenovo/Desktop/ResumeCreta/web/image/"+P.getMobile()+"-"+P.getFirstname()+".png");
                    pd.retrievephotobymobile(mobile);
                    //out.println("Record Inserted.");
                    session.setAttribute("msg",
                        "Image Updated.<br>It will take time to update on resume.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/menu/");
                }
                else
                {
                    //out.println("Record not Inserted.");
                    session.setAttribute("msg",
                            "Image size is greater than 1MB,<br>"
                            + "Select under(less than) 1MB size.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/update/photo/");
                }
            }
            else
            {
                //out.println("Error.");
                session.setAttribute("msg",
                            "There is an technical error in updating profile,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/update/photo/");
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