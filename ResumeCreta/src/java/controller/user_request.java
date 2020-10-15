package controller;
import dao.ContactDAO;
import model.Contact;
import java.io.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;
import javax.servlet.*;
import javax.servlet.http.*;
public class user_request extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String name, email, mobile, message, day;
        name = request.getParameter("name");
        email = request.getParameter("email");
        mobile = request.getParameter("mobile");
        message = request.getParameter("message");
        day = request.getParameter("day");
        String req_id, date;
        int i,lenght = 10;
        String NUMBERS = "98765432123456789876543212345678987654321234567898765432123456789";
        Random random = new Random();
        char[] id = new char[lenght];
        int index = 0;
        for(i=0; i<lenght; i++)
        {
            id[i] = NUMBERS.charAt(random.nextInt(NUMBERS.length()));
        }
        req_id = id[0]+""+id[1]+""+id[2]+""+id[3]+""+id[4]+""+id[5]
                    +""+id[6]+""+id[7]+""+id[8]+""+id[9];
        DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY");    // date format
        LocalDateTime dtf = LocalDateTime.now();
        date = dtf1.format(dtf);
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Contact | Resume CRETA</title>");
        out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
        out.println("</head>");
        out.println("<body>"); 
        ContactDAO cd = new ContactDAO();
        if(req_id!=null)
        {
            Contact C = new Contact();
            C.setReq_id(req_id);
            C.setName(name);
            C.setEmail(email);
            C.setMobile(mobile);
            C.setMessage(message);
            C.setDate(date);
            C.setDay(day);
            if(cd.sendrequest(C))
            {
                session.setAttribute("msg1",
                        "Your request id is "+req_id);
                session.setAttribute("msg2",
                        "We will respond as soon as possible");
                response.sendRedirect("request/");
            }
            else
            {
                lenght = 10;
                NUMBERS = "98765432123456789876543212345678987654321234567898765432123456789";
                index = 0;
                for(i=0; i<lenght; i++)
                {
                    id[i] = NUMBERS.charAt(random.nextInt(NUMBERS.length()));
                }
                req_id = id[0]+""+id[1]+""+id[2]+""+id[3]+""+id[4]+""+id[5]
                            +""+id[6]+""+id[7]+""+id[8]+""+id[9];
                C.setReq_id(req_id);
                C.setName(name);
                C.setEmail(email);
                C.setMobile(mobile);
                C.setMessage(message);
                C.setDate(date);
                C.setDay(day);
                if(cd.sendrequest(C))
                {
                    session.setAttribute("msg1",
                            "Your request id is "+req_id);
                    response.sendRedirect("request/");
                    session.setAttribute("msg2",
                        "We will respond as soon as possible");
                }
                else
                {
                    session.setAttribute("msg",
                            "Request not submitted, There is an technical Error.");
                    session.setAttribute("msg2",
                        "Retry Again, Sorry for inconvenience.");
                    response.sendRedirect("request/");
                }
            }
        }
        out.println("</body>");
        out.println("</html>"); 
    }
}