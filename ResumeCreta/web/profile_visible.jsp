<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="dao.ProfileDAO"%>
<%@page import="model.Profile"%>
<%
ProfileDAO pd = new ProfileDAO();
Profile P;
String mobile;
mobile = session.getAttribute("mobile").toString();
P = pd.searchprofiledatabymobile(mobile);
%>
<!DOCTYPE html>
<html>
 <head>
  <title>Profile Visibility - RESUME CRETA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
  <script src="js/profile_edit.js"></script>
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
      <li class="nav-item"> <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a> </li>
      <li class="nav-item"> <a class="nav-link text-primary" href="../../signout" style="cursor:pointer;">Log-Out !</a> </li>
      <li><a id="google_translate_element"></a></li>
     </ul>
     </div>
    </div>
  </nav>
  <div class="container" style="background-color:white;color:white;margin-top:120px;margin-bottom:-30px;">
   <div class="alert alert-danger">
    <big>
     <b><strong>Alert!</strong> Don't deleted your profile, only hide profile's.</b>
    </big>
    <p><strong>Info:</strong> All CV/Resume profile information not changable. Only few information is changable, that's profile hide only, don't delete it.</p>
   </div>
  </div>
  <form action="../../visible" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <h3><b>Account Status</b></h3>
    <p>Setting of Resume / CV:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="visibility">Resume / CV visibility</label>
      </div>
      <div class="col-75">
       <select name="visibility">
        <option value="Show">Show&nbsp;[PUBLIC]</option>
        <option value="Hide" disabled>Hide&nbsp;&nbsp;[PRIVATE]</option>
       </select>
      </div>
      <input type="submit" value="Visible Resume Profile">
      <br><br><br>
      <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
     </div>
    </div>
   </div>
  </form>
  <div class="container" style="background-color:white">
   <b><span class="psw">Delete your account permanently, <a href="../../resume_delete?mobile=<%= P.getMobile() %>" style="color:blue;">Click here!</a></span></b>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 </body>
</html>