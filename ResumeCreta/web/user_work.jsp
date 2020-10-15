<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="dao.ProfileDAO"%>
<%@page import="model.Profile"%>
<%
ProfileDAO pd = new ProfileDAO();
Profile P;
String mobile, pages;
mobile = session.getAttribute("mobile").toString();
pages = session.getAttribute("pages").toString();
P = pd.searchprofiledatabymobile(mobile);
%>
<!DOCTYPE html>
<html>
 <head>
  <title>Profile Update - RESUME CRETA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
  <script src="http://localhost:8084/ResumeCreta/js/live.js"></script>
  <script src="http://localhost:8084/ResumeCreta/js/connection.js"></script>
  <script type="text/javascript">function googleTranslateElementInit(){new google.translate.TranslateElement({pageLanguage: 'en',layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');}</script>
  <script type="text/javascript" >
  (function(){var gtConstEvalStartTime = new Date();function d(b){var a=document.getElementsByTagName("head")[0];a||(a=document.body.parentNode.appendChild(document.createElement("head")));a.appendChild(b)}function _loadJs(b){var a=document.createElement("script");a.type="text/javascript";a.charset="UTF-8";a.src=b;d(a)}function _loadCss(b){var a=document.createElement("link");a.type="text/css";a.rel="stylesheet";a.charset="UTF-8";a.href=b;d(a)}function _isNS(b){b=b.split(".");for(var a=window,c=0;c<b.length;++c)if(!(a=a[b[c]]))return!1;return!0}
  function _setupNS(b){b=b.split(".");for(var a=window,c=0;c<b.length;++c)a.hasOwnProperty?a.hasOwnProperty(b[c])?a=a[b[c]]:a=a[b[c]]={}:a=a[b[c]]||(a[b[c]]={});return a}window.addEventListener&&"undefined"==typeof document.readyState&&window.addEventListener("DOMContentLoaded",function(){document.readyState="complete"},!1);
  if (_isNS('google.translate.Element')){return}(function(){var c=_setupNS('google.translate._const');c._cest = gtConstEvalStartTime;gtConstEvalStartTime = undefined;c._cl='en';c._cuc='googleTranslateElementInit';c._cac='';c._cam='';c._ctkk=eval('((function(){var a\x3d989839371;var b\x3d3078371007;return 422201+\x27.\x27+(a+b)})())');var h='translate.googleapis.com';var s=(true?'https':window.location.protocol=='https:'?'https':'http')+'://';var b=s+h;c._pah=h;c._pas=s;c._pbi=b+'/translate_static/img/te_bk.gif';c._pci=b+'/translate_static/img/te_ctrl3.gif';c._pli=b+'/translate_static/img/loading.gif';c._plla=h+'/translate_a/l';c._pmi=b+'/translate_static/img/mini_google.png';c._ps=b+'/translate_static/css/translateelement.css';c._puh='translate.google.com';_loadCss(c._ps);_loadJs(b+'/translate_static/js/element/main.js');})();})();
  </script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  /* form1*/
  body 
  {
   font-family: Arial;
  }
  #navbar12,*
  {
   -webkit-user-select: none;
   -ms-user-select: none;
   user-select: none;
  }
  input[type=text], select, input
  {
   width: 100%;
   padding: 12px 20px;
   margin: 8px 0;
   display: block;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-sizing: border-box;
  }
  input[type=submit]:hover
  {
   background-color: #45a049;
  }
  div.container 
  {
   border-radius: 5px;
   padding: 20px;
  }
  div.row-12 
  {
   border-radius: 5px;
   background-color: #f2f2f2;
   padding: 20px;
  }
  /* form2 */
  *
  {
   box-sizing: border-box;
  }
  input[type=text], select, textarea 
  {
   width: 100%;
   padding: 12px;
   border: 1px solid #ccc;
   border-radius: 4px;
   resize: vertical;
  }
  label 
  {
   padding: 12px 12px 12px 0;
   display: inline-block;
  }
  input[type=submit]
  {
   background-color: #4CAF50;
   color: white;
   //margin: 20px;
   //padding: 12px 20px;
   border: none;
   border-radius: 4px;
   cursor: pointer;
   float: right;
  }
  input[type=reset] 
  {
   background-color: #d9534f;
   color: white;
   margin: 20px;
   padding: 12px 20px;
   border: none;
   border-radius: 4px;
   cursor: pointer;
   float: right;
  }
  input[type=submit]:hover 
  {
   background-color: #45a049;
  }
  input[type=reset]:hover 
  {
   background-color: #f44336;
  }
  .col-25 
  {
   float: left;
   width: 25%;
   margin-top: 6px;
   padding: 20px;
  }
  .col-50 
  {
   float: left;
   width: 50%;
   margin-top: 6px;
   // padding: 20px;
  }
  .col-75 
  {
   float: left;
   width: 73%;
   margin-top: 6px;
  }
  /* Clear floats after the columns */
  .row:after 
  {
   content: "";
   display: table;
   clear: both;
  }
  /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
  @media screen and (max-width: 600px) 
  {
   .col-25, .col-75, input[type=submit] 
   {
    width: 100%;
    margin-top: 0;
   }
  }
  hr
  {
   border: 1px solid black;
  }
  .sticky 
  {
   position: fixed;
   top: 0;
   width: 100%;
  }
  </style>
 </head>
 <body onoffline="lost()" ononline="load()" id="body">
  <nav id="navbar" class="navbar navbar-expand-md navbar-dark bg-dark sticky">
   <div class="container">
    <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar12">
     <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar12">
     <a class="navbar-brand d-none d-md-block" style="color:white;cursor:pointer;">
      <div class="w3-xxlarge" style="margin-top: -40px;margin-bottom:-50px;">
       <span class="w3-xxxlarge">&#10162;</span>
       <span class="w3-xxxlarge">&#422;</span><span>&#101;&#115;&#117;&#109;&#101;</span>
       <span class="w3-xxxlarge">&#8705;</span><span>&#114;&#101;&#116;&#97;</span><span>&#8482;</span>
      </div>
      <!--
      <i class="fa d-inline fa-lg fa-circle"></i>
      <b> RESUME CRETA</b>
      -->
     </a>
     <ul class="navbar-nav mx-auto">
      <li class="nav-item"> <a class="nav-link">Hii <%= P.getEmail() %> (<%= P.getIsd() %>) <%= P.getMobile() %></a> </li>
     </ul>
     <ul class="navbar-nav">
      <li class="nav-item"> <a class="nav-link" href="../../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a> </li>
      <li class="nav-item"> <a class="nav-link text-primary" href="../../../signout" style="cursor:pointer;">Log-Out !</a> </li>
      <li><a id="google_translate_element"></a></li>
     </ul>
     </div>
    </div>
  </nav>
  <br><br><br><br>
  <form action="../../../update_work_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <input type="hidden" name="pages" value="<%= pages %>">
   <div class="container">
    <hr style="background-color:black;">
    <h3><b>Experience</b></h3>
    <p>The work or jobs that you have done in life so far:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="workexperience">Work Experience</label>
      </div>
      <div class="col-75">
       <select name="workexperience" id="workexperience" required autofocus="on" onchange="change()">
        <%
        if(P.getWorkexperience().equalsIgnoreCase("Fresher"))
        {
        %>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("Fresher with Internship"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("1-6 month experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("6-12 month experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("1-2 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("2-3 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("3-4 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="3-4 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("4-5 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("+5 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("+10 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <option value="+15 year experience">+15 year experience</option>
        <%
        }
        if(P.getWorkexperience().equalsIgnoreCase("+15 year experience"))
        {
        %>
        <option value="Fresher">Fresher</option>
        <option value="Fresher with Internship">Fresher with Internship</option>
        <option value="1-6 month experience">1-6 month experience</option>
        <option value="6-12 month experience">6-12 month experience</option>
        <option value="1-2 year experience">1-2 year experience</option>
        <option value="2-3 year experience">2-3 year experience</option>
        <option value="3-4 year experience">3-4 year experience</option>
        <option value="4-5 year experience">4-5 year experience</option>
        <option value="+5 year experience">+5 year experience</option>
        <option value="+10 year experience">+10 year experience</option>
        <option value="<%= P.getWorkexperience() %>" selected><%= P.getWorkexperience() %></option>
        <%
        }
        %>
       </select>
       <span id="workexperiencefield">If you are a fresher, your project work will not visible in the resume.</span>
       <script>
           function change()
           {
            var msg = document.getElementById("workexperience").value;
            if(msg=="Fresher")
            {
                document.getElementById("workexperiencefield").innerHTML = "<b style='color:red;'>If you are a fresher, your project work will not visible in the resume.</b>"
            }
            else
            {
                document.getElementById("workexperiencefield").innerHTML = "";
            }
           }
       </script>
      </div>
     </div>
     <h6><b>Project Detail 1:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_1">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_1" id="project1" placeholder="Project name" value="<%= P.getProject_1() %>" autocomplete="off" onfocus="selectproject1()" onkeyup="hide1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_1">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_1" id="projectdate1" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_1() %>" autocomplete="off" onfocus="selectprojectdate1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_1">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_1" id="work1" placeholder="Project description" value="<%= P.getWork_1() %>" autocomplete="off" spellcheck="true" onfocus="selectwork1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_1">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_1" id="worklink1" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_1() %>" autocomplete="off" onfocus="selectworklink1()">
      </div>
     </div>
     <h6><b>Project Detail 2:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_2">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_2" id="project2" placeholder="Project name" value="<%= P.getProject_2() %>" autocomplete="off" onfocus="selectproject2()" onkeyup="hide2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_2">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_2" id="projectdate2" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_2() %>" autocomplete="off" onfocus="selectprojectdate2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_2">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_2" id="work2" placeholder="Project description" value="<%= P.getWork_2() %>" autocomplete="off" spellcheck="true" onfocus="selectwork2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_2">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_2" id="worklink2" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_2() %>" autocomplete="off" onfocus="selectworklink2()">
      </div>
     </div>
     <h6><b>Project Detail 3:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_3">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_3" id="project3" placeholder="Project name" value="<%= P.getProject_3() %>" autocomplete="off" onfocus="selectproject3()" onkeyup="hide3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_3">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_3" id="projectdate3" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_3() %>" autocomplete="off" onfocus="selectprojectdate3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_3">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_3" id="work3" placeholder="Project description" value="<%= P.getWork_3() %>" autocomplete="off" spellcheck="true" onfocus="selectwork3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_3">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_3" id="worklink3" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_3() %>" autocomplete="off" onfocus="selectworklink3()">
      </div>
     </div>
     <h6><b>Project Detail 4:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_4">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_4" id="project4" placeholder="Project name" value="<%= P.getProject_4() %>" autocomplete="off" onfocus="selectproject4()" onkeyup="hide4()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_4">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_4" id="projectdate4" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_4() %>" autocomplete="off" onfocus="selectprojectdate4()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_4">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_4" id="work4" placeholder="Project description" value="<%= P.getWork_4() %>" autocomplete="off" spellcheck="true" onfocus="selectwork4()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_4">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_4" id="worklink4" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_4() %>" autocomplete="off" onfocus="selectworklink4()">
      </div>
     </div>
     <h6><b>Project Detail 5:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_5">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_5" id="project5" placeholder="Project name" value="<%= P.getProject_5() %>" autocomplete="off" onfocus="selectproject5()" onkeyup="hide5()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_5">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_5" id="projectdate5" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_5() %>" autocomplete="off" onfocus="selectprojectdate5()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_5">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_5" id="work5" placeholder="Project description" value="<%= P.getWork_5() %>" autocomplete="off" spellcheck="true" onfocus="selectwork5()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_5">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_5" id="worklink5" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_5() %>" autocomplete="off" onfocus="selectworklink5()">
      </div>
     </div>
     <h6><b>Project Detail 6:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_6">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_6" id="project6" placeholder="Project name" value="<%= P.getProject_6() %>" autocomplete="off" onfocus="selectproject6()" onkeyup="hide6()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_6">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_6" id="projectdate6" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_6() %>" autocomplete="off" onfocus="selectprojectdate6()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_6">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_6" id="work6" placeholder="Project description" value="<%= P.getWork_6() %>" autocomplete="off" spellcheck="true" onfocus="selectwork6()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_6">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_6" id="worklink6" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_6() %>" autocomplete="off" onfocus="selectworklink6()">
      </div>
     </div>
     <h6><b>Project Detail 7:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="project_7">Project</label>
      </div>
      <div class="col-75">
       <input type="text" name="project_7" id="project7" placeholder="Project name" value="<%= P.getProject_7() %>" autocomplete="off" onfocus="selectproject7()" onkeyup="hide7()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="projectdate_7">Duration / Timing</label>
      </div>
      <div class="col-75">
       <input type="text" name="projectdate_7" id="projectdate7" placeholder="Project duration / Time period of project (eg. March 2015 - June 2016)" value="<%= P.getProjectdate_7() %>" autocomplete="off" onfocus="selectprojectdate7()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="work_7">Description</label>
      </div>
      <div class="col-75">
       <input type="text" name="work_7" id="work7" placeholder="Project description" value="<%= P.getWork_7() %>" autocomplete="off" onfocus="selectwork7()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="worklink_7">Link of project</label>
      </div>
      <div class="col-75">
       <input type="url" name="worklink_7" id="worklink7" placeholder="Paste link of project (if available)" value="<%= P.getWorklink_7() %>" autocomplete="off" onfocus="selectworklink7()">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectproject1() 
  {
    var project1 = document.getElementById("project1");
    project1.focus();
    project1.select();
  }
  function selectproject2()
  {
    var project2 = document.getElementById("project2");
    project2.focus();
    project2.select();
  }
  function selectproject3() 
  {
    var project3 = document.getElementById("project3");
    project3.focus();
    project3.select();
  }
  function selectproject4() 
  {
    var project4 = document.getElementById("project4");
    project4.focus();
    project4.select();
  }
  function selectproject5()
  {
    var project5 = document.getElementById("project5");
    project5.focus();
    project5.select();
  }
  function selectproject6() 
  {
    var project6 = document.getElementById("project6");
    project6.focus();
    project6.select();
  }
  function selectproject7() 
  {
    var project7 = document.getElementById("project7");
    project7.focus();
    project7.select();
  }
  function selectprojectdate1() 
  {
    var projectdate1 = document.getElementById("projectdate1");
    projectdate1.focus();
    projectdate1.select();
  }
  function selectprojectdate2()
  {
    var projectdate2 = document.getElementById("projectdate2");
    projectdate2.focus();
    projectdate2.select();
  }
  function selectprojectdate3() 
  {
    var projectdate3 = document.getElementById("projectdate3");
    projectdate3.focus();
    projectdate3.select();
  }
  function selectprojectdate4() 
  {
    var projectdate4 = document.getElementById("projectdate4");
    projectdate4.focus();
    projectdate4.select();
  }
  function selectprojectdate5()
  {
    var projectdate5 = document.getElementById("projectdate5");
    projectdate5.focus();
    projectdate5.select();
  }
  function selectprojectdate6() 
  {
    var projectdate6 = document.getElementById("projectdate6");
    projectdate6.focus();
    projectdate6.select();
  }
  function selectprojectdate7() 
  {
    var projectdate7 = document.getElementById("projectdate7");
    projectdate7.focus();
    projectdate7.select();
  }
  function selectwork1() 
  {
    var work1 = document.getElementById("work1");
    work1.focus();
    work1.select();
  }
  function selectwork2()
  {
    var work2 = document.getElementById("work2");
    work2.focus();
    work2.select();
  }
  function selectwork3() 
  {
    var work3 = document.getElementById("work3");
    work3.focus();
    work3.select();
  }
  function selectwork4() 
  {
    var work4 = document.getElementById("work4");
    work4.focus();
    work4.select();
  }
  function selectwork5()
  {
    var work5 = document.getElementById("work5");
    work5.focus();
    work5.select();
  }
  function selectwork6() 
  {
    var work6 = document.getElementById("work6");
    work6.focus();
    work6.select();
  }
  function selectwork7() 
  {
    var work7 = document.getElementById("work7");
    work7.focus();
    work7.select();
  }
  function selectworklink1() 
  {
    var worklink1 = document.getElementById("worklink1");
    worklink1.focus();
    worklink1.select();
  }
  function selectworklink2()
  {
    var worklink2 = document.getElementById("worklink2");
    worklink2.focus();
    worklink2.select();
  }
  function selectworklink3() 
  {
    var worklink3 = document.getElementById("worklink3");
    worklink3.focus();
    worklink3.select();
  }
  function selectworklink4() 
  {
    var worklink4 = document.getElementById("worklink4");
    worklink4.focus();
    worklink4.select();
  }
  function selectworklink5()
  {
    var worklink5 = document.getElementById("worklink5");
    worklink5.focus();
    worklink5.select();
  }
  function selectworklink6() 
  {
    var worklink6 = document.getElementById("worklink6");
    worklink6.focus();
    worklink6.select();
  }
  function selectworklink7() 
  {
    var worklink7 = document.getElementById("worklink7");
    worklink7.focus();
    worklink7.select();
  }
  var Project1 = document.getElementById("project1").value;
  var Project2 = document.getElementById("project2").value;
  var Project3 = document.getElementById("project3").value;
  var Project4 = document.getElementById("project4").value;
  var Project5 = document.getElementById("project5").value;
  var Project6 = document.getElementById("project6").value;
  var Project7 = document.getElementById("project7").value;
  if(Project1=="")
  {
      document.getElementById("projectdate1").value = "";
      document.getElementById("work1").value = "";
      document.getElementById("worklink1").value = "";
      document.getElementById("projectdate1").disabled = true;
      document.getElementById("work1").disabled = true;
      document.getElementById("worklink1").disabled = true;
  }
  else
  {
      document.getElementById("projectdate1").disabled = false;
      document.getElementById("work1").disabled = false;
      document.getElementById("worklink1").disabled = false;
  }
  if(Project2=="")
  {
      document.getElementById("projectdate2").value = "";
      document.getElementById("work2").value = "";
      document.getElementById("worklink2").value = "";
      document.getElementById("projectdate2").disabled = true;
      document.getElementById("work2").disabled = true;
      document.getElementById("worklink2").disabled = true;
  }
  else
  {
      document.getElementById("projectdate2").disabled = false;
      document.getElementById("work2").disabled = false;
      document.getElementById("worklink2").disabled = false;
  }
  if(Project3=="")
  {
      document.getElementById("projectdate3").value = "";
      document.getElementById("work3").value = "";
      document.getElementById("worklink3").value = "";
      document.getElementById("projectdate3").disabled = true;
      document.getElementById("work3").disabled = true;
      document.getElementById("worklink3").disabled = true;
  }
  else
  {
      document.getElementById("projectdate3").disabled = false;
      document.getElementById("work3").disabled = false;
      document.getElementById("worklink3").disabled = false;
  }
  if(Project4=="")
  {
      document.getElementById("projectdate4").value = "";
      document.getElementById("work4").value = "";
      document.getElementById("worklink4").value = "";
      document.getElementById("projectdate4").disabled = true;
      document.getElementById("work4").disabled = true;
      document.getElementById("worklink4").disabled = true;
  }
  else
  {
      document.getElementById("projectdate4").disabled = false;
      document.getElementById("work4").disabled = false;
      document.getElementById("worklink4").disabled = false;
  }
  if(Project5=="")
  {
      document.getElementById("projectdate5").value = "";
      document.getElementById("work5").value = "";
      document.getElementById("worklink5").value = "";
      document.getElementById("projectdate5").disabled = true;
      document.getElementById("work5").disabled = true;
      document.getElementById("worklink5").disabled = true;
  }
  else
  {
      document.getElementById("projectdate5").disabled = false;
      document.getElementById("work5").disabled = false;
      document.getElementById("worklink5").disabled = false;
  }
  if(Project6=="")
  {
      document.getElementById("projectdate6").value = "";
      document.getElementById("work6").value = "";
      document.getElementById("worklink6").value = "";
      document.getElementById("projectdate6").disabled = true;
      document.getElementById("work6").disabled = true;
      document.getElementById("worklink6").disabled = true;
  }
  else
  {
      document.getElementById("projectdate6").disabled = false;
      document.getElementById("work6").disabled = false;
      document.getElementById("worklink6").disabled = false;
  }
  if(Project7=="")
  {
      document.getElementById("projectdate7").value = "";
      document.getElementById("work7").value = "";
      document.getElementById("worklink7").value = "";
      document.getElementById("projectdate7").disabled = true;
      document.getElementById("work7").disabled = true;
      document.getElementById("worklink7").disabled = true;
  }
  else
  {
      document.getElementById("projectdate7").disabled = false;
      document.getElementById("work7").disabled = false;
      document.getElementById("worklink7").disabled = false;
  }
  function hide1()
  {
    var Input1 = document.getElementById("project1").value;
    var url1 = document.getElementById("worklink1").value;
    if(Input1=="")
    {
      document.getElementById("projectdate1").value = "";
      document.getElementById("work1").value = "";
      document.getElementById("worklink1").value = "";
      document.getElementById("projectdate1").disabled = true;
      document.getElementById("work1").disabled = true;
      document.getElementById("worklink1").disabled = true;
    }
    else
    {
      document.getElementById("projectdate1").disabled = false;
      document.getElementById("work1").disabled = false;
      document.getElementById("worklink1").disabled = false;
      document.getElementById("projectdate1").required = true;
      document.getElementById("work1").required = true;
      if(url1=="")
      {
        document.getElementById("worklink1").required = false;
      }
      else
      {
        document.getElementById("worklink1").required = true;
      }
    }
  }
  function hide2()
  {
    var Input2 = document.getElementById("project2").value;
    var url2 = document.getElementById("worklink2").value;
    if(Input2=="")
    {
      document.getElementById("projectdate2").value = "";
      document.getElementById("work2").value = "";
      document.getElementById("worklink2").value = "";
      document.getElementById("projectdate2").disabled = true;
      document.getElementById("work2").disabled = true;
      document.getElementById("worklink2").disabled = true;
    }
    else
    {
      document.getElementById("projectdate2").disabled = false;
      document.getElementById("work2").disabled = false;
      document.getElementById("worklink2").disabled = false;
      document.getElementById("projectdate2").required = true;
      document.getElementById("work2").required = true;
      if(url2=="")
      {
        document.getElementById("worklink2").required = false;
      }
      else
      {
        document.getElementById("worklink2").required = true;
      }
    }
  }
  function hide3()
  {
    var Input3 = document.getElementById("project3").value;
    var url3 = document.getElementById("worklink3").value;
    if(Input3=="")
    {
      document.getElementById("projectdate3").value = "";
      document.getElementById("work3").value = "";
      document.getElementById("worklink3").value = "";
      document.getElementById("projectdate3").disabled = true;
      document.getElementById("work3").disabled = true;
      document.getElementById("worklink3").disabled = true;
    }
    else
    {
      document.getElementById("projectdate3").disabled = false;
      document.getElementById("work3").disabled = false;
      document.getElementById("worklink3").disabled = false;
      document.getElementById("projectdate3").required = true;
      document.getElementById("work3").required = true;
      if(url3=="")
      {
        document.getElementById("worklink3").required = false;
      }
      else
      {
        document.getElementById("worklink3").required = true;
      }
    }
  }
  function hide4()
  {
    var Input4 = document.getElementById("project4").value;
    var url4 = document.getElementById("worklink4").value;
    if(Input4=="")
    {
      document.getElementById("projectdate4").value = "";
      document.getElementById("work4").value = "";
      document.getElementById("worklink4").value = "";
      document.getElementById("projectdate4").disabled = true;
      document.getElementById("work4").disabled = true;
      document.getElementById("worklink4").disabled = true;
    }
    else
    {
      document.getElementById("projectdate4").disabled = false;
      document.getElementById("work4").disabled = false;
      document.getElementById("worklink4").disabled = false;
      document.getElementById("projectdate4").required = true;
      document.getElementById("work4").required = true;
      if(url4=="")
      {
        document.getElementById("worklink4").required = false;
      }
      else
      {
        document.getElementById("worklink4").required = true;
      }
    }
  }
  function hide5()
  {
    var Input5 = document.getElementById("project5").value;
    var url5 = document.getElementById("worklink5").value;
    if(Input5=="")
    {
      document.getElementById("projectdate5").value = "";
      document.getElementById("work5").value = "";
      document.getElementById("worklink5").value = "";
      document.getElementById("projectdate5").disabled = true;
      document.getElementById("work5").disabled = true;
      document.getElementById("worklink5").disabled = true;
    }
    else
    {
      document.getElementById("projectdate5").disabled = false;
      document.getElementById("work5").disabled = false;
      document.getElementById("worklink5").disabled = false;
      document.getElementById("projectdate5").required = true;
      document.getElementById("work5").required = true;
      if(url5=="")
      {
        document.getElementById("worklink5").required = false;
      }
      else
      {
        document.getElementById("worklink5").required = true;
      }
    }
  }
  function hide6()
  {
    var Input6 = document.getElementById("project6").value;
    var url6 = document.getElementById("worklink6").value;
    if(Input6=="")
    {
      document.getElementById("projectdate6").value = "";
      document.getElementById("work6").value = "";
      document.getElementById("worklink6").value = "";
      document.getElementById("projectdate6").disabled = true;
      document.getElementById("work6").disabled = true;
      document.getElementById("worklink6").disabled = true;
    }
    else
    {
      document.getElementById("projectdate6").disabled = false;
      document.getElementById("work6").disabled = false;
      document.getElementById("worklink6").disabled = false;
      document.getElementById("projectdate6").required = true;
      document.getElementById("work6").required = true;
      if(url6=="")
      {
        document.getElementById("worklink6").required = false;
      }
      else
      {
        document.getElementById("worklink6").required = true;
      }
    }
  }
  function hide7()
  {
    var Input7 = document.getElementById("project7").value;
    var url7 = document.getElementById("worklink7").value;
    if(Input7=="")
    {
      document.getElementById("projectdate7").value = "";
      document.getElementById("work7").value = "";
      document.getElementById("worklink7").value = "";
      document.getElementById("projectdate7").disabled = true;
      document.getElementById("work7").disabled = true;
      document.getElementById("worklink7").disabled = true;
    }
    else
    {
      document.getElementById("projectdate7").disabled = false;
      document.getElementById("work7").disabled = false;
      document.getElementById("worklink7").disabled = false;
      document.getElementById("projectdate7").required = true;
      document.getElementById("work7").required = true;
      if(url7=="")
      {
        document.getElementById("worklink7").required = false;
      }
      else
      {
        document.getElementById("worklink7").required = true;
      }
    }
  }
  </script>
  <br><br><br><br><br><br>
  <%
   String Msg;
   Msg = session.getAttribute("msg").toString();
  %>
  <div class="alert text-center footeralert">
   <a href="#" class="close" data-dismiss="alert" aria-label="close" style="color:white">&times;</a>
   <strong><%= Msg %></strong> 
  </div>
  <style>
  .footeralert
  {
   position: fixed;
   left: 0;
   bottom: -13px;
   width: 100%;
   background-color:#300078;
   color: white;
   //text-align: center;
  }
  </style>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 </body>
</html>