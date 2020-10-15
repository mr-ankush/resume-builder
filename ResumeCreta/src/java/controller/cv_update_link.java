package controller;
import dao.ProfileDAO;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.Profile;
public class cv_update_link extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Update | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        String mobile=null,pages=null;
        mobile = request.getParameter("mobile");
        pages = request.getParameter("pages");
        ProfileDAO pd = new ProfileDAO();
        Profile P;
        P = pd.searchprofiledatabymobile(mobile);
        //out.println("Record not Inserted."+P1.getMobile()+","+P1.getEmail());
        //response.sendRedirect("profile/update/");
        if(!pages.isEmpty())
        {
            //out.print(pages);
            if(pages.equalsIgnoreCase("cv_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/theme/");
            }
            else if(pages.equalsIgnoreCase("photo_detail"))
            {
                //session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/photo/");
            }
            else if(pages.equalsIgnoreCase("pd_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/info/");
            }    
            else if(pages.equalsIgnoreCase("lk_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/language/");
            }
            else if(pages.equalsIgnoreCase("s_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/skills/");
            }
            else if(pages.equalsIgnoreCase("ba_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/attitude/");
            }
            else if(pages.equalsIgnoreCase("ih_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/hobby/");
            }
            else if(pages.equalsIgnoreCase("obj_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/objective/");
            }
            else if(pages.equalsIgnoreCase("edu_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/education/");
            }
            else if(pages.equalsIgnoreCase("cert_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/certificate/");
            }
            else if(pages.equalsIgnoreCase("work_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/work/");
            }
            else if(pages.equalsIgnoreCase("sml_detail"))
            {
                session.setAttribute("pages",pages);
                session.setAttribute("msg",
                    "Welcome "+P.getEmail()+",<br>"+
                        "Make necessary changes.");
                response.sendRedirect("profile/update/connection/");
            }
            else
            {
                session.setAttribute("msg",
                    "There is an technical error in open link.");
                response.sendRedirect("profile/menu/");
            }
        }
        out.println("</body>");
        out.println("</html>");
    }
}