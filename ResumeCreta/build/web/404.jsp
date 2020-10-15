<%
String scheme=null;
String serverName=null;
int serverPort;
String uri=null;
String prmstr=null;
String url=null;
scheme = request.getScheme();             
serverName = request.getServerName(); 
serverPort = request.getServerPort();    
uri = (String) request.getAttribute("javax.servlet.forward.request_uri");
prmstr = (String) request.getAttribute("javax.servlet.forward.query_string");
if(prmstr==null)
{
 url = scheme + "://" +serverName + ":" + serverPort + uri;
}
else
{
 url = scheme + "://" +serverName + ":" + serverPort + uri + "?" + prmstr;
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Not Found | 404 ERROR</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
        <script src="http://localhost:8084/ResumeCreta/js/live.js"></script>
        <script src="http://localhost:8084/ResumeCreta/js/connection.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 </head>
 <body style="background:#fffafe;" onoffline="lost()" ononline="load()" id="body">
  <div class="w3-center" style="margin-top:2%"><%= url %></div>
  <div class="container w3-center">
   <img src="http://localhost:8084/ResumeCreta/images/404.gif" alt="page not found" style="width:40%;height:auto; margin-top:2%" draggable="false">
   <div class="centeredimginvalid" style="cursor: pointer;">
    <div class="w3-container w3-card-4 w3-round-xlarge w3-text-black">
     <span onmouseover="change3()" onmouseout="change4()"><a href="http://www.resumecreta.com:8084/ResumeCreta/index/" style="text-decoration:none;"><h2 id="hide2"><i class="fa fa-arrow-circle-left w3-text-red"></i>&nbsp;Back to Home Page</h2></a></span>
    </div>
   </div>
   <script>
    function change3(){
     document.getElementById("hide2").innerHTML = "<i class='fa fa-arrow-circle-left w3-text-red fa-spin'></i>&nbsp;Back to Home Page</h2>";
    }
    function change4(){
     document.getElementById("hide2").innerHTML = "<i class='fa fa-arrow-circle-left w3-text-red'></i>&nbsp;Back to Home Page</h2>";
    }
     </script>
  </div>
  <style>
   .centeredimginvalid
   {
    position: absolute;
    top: 83%;
    left: 50%;
    transform: translate(-50%, -50%);
   }
   *
   {
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
   }
   </style>
</html>
