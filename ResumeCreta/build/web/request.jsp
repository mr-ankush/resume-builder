<%
String Msg1, Msg2;
Msg1 = session.getAttribute("msg1").toString();
Msg2 = session.getAttribute("msg2").toString();
%>
<!DOCTYPE html>
<html>
 <head>
  <title>Contact - RESUME CRETA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
  <script src="http://localhost:8084/ResumeCreta/js/checkback.js"></script>
  <script>
      function alert_msg()
      {
          alert('<%= Msg1 %>\n<%= Msg2 %>.');
          exit_time();
      }
      function exit_time()
      {
        setTimeout
        (
            function(exit_time)
            {
                close();
                open("http://www.resumecreta.com:8084/ResumeCreta/");
            }
            ,100
        )
      }
  </script>
 </head>
 <body onload="alert_msg()" onpageshow="if(event.persisted){checkback();}">
 </body>
</html>