<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="dao.ProfileDAO"%>
<%@page import="model.Profile"%>
<%
ProfileDAO pd = new ProfileDAO();
Profile P;
String isd=null,mobile=null,email=null,password=null,forgetque=null,forgetans=null;
isd = session.getAttribute("isd").toString();
mobile = session.getAttribute("mobile").toString();
email = session.getAttribute("email").toString();
password = session.getAttribute("password").toString();
forgetque = session.getAttribute("forgetque").toString();
forgetans = session.getAttribute("forgetans").toString();
%>
<!DOCTYPE html>
<html>
 <head>
  <title>Profile Backup - RESUME CRETA</title>
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
 </head>
 <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
*
  {
   -webkit-user-select: none;
   -ms-user-select: none;
   user-select: none;
  }
/* Set a style for all buttons */
.reason {
  background-color: #f1f1f1;
  color: #000;
}

button,input {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Float cancel and delete buttons and add an equal width */
.cancelbtn, .deletebtn {
  float: left;
  width: 50%;
}

/* Add a color to the cancel button */
.cancelbtn {
  background-color: #ccc;
  color: black;
}

/* Add a color to the delete button */
.deletebtn {
  background-color: #f44336;
}

/* Add padding and center-align text to the container */
.container {
  padding: 16px;
  text-align: center;
}

/* The Modal (background) */
.modal {
  display: block; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Modal Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and delete button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .deletebtn {
     width: 100%;
  }
}
 </style>
 <body onoffline="lost()" ononline="load()" id="body">
  <div id="id01" class="modal">
   <nav id="navbar" class="navbar navbar-expand-md navbar-dark bg-dark sticky" style="margin-top: -50px;">
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
       <li class="nav-item"> <a class="nav-link">Hii <%= email %> (<%= isd %>) <%= mobile %></a> </li>
      </ul>
      <ul class="navbar-nav">
       <li class="nav-item"><a class="nav-link text-primary" href="../../index/" style="cursor:pointer;"><i class="fa fa-arrow-left"></i>&nbsp;Home</a></li>
       <li><a id="google_translate_element"></a></li>
      </ul>
     </div>
    </div>
   </nav>
   <div class="modal-content">
    <div class="container">
     <h1>Backup Account</h1>
     <p>Do you want to resume your previous account?</p>
     <div class="clearfix">
      <form action="../../newacc" method="POST">
       <input type="hidden" name="isd" value="<%= isd %>" readonly>
       <input type="hidden" name="mobile" value="<%= mobile %>" readonly>
       <input type="hidden" name="email" value="<%= email %>" readonly>
       <input type="hidden" name="password" value="<%= password %>" readonly>
       <input type="hidden" name="forgetque" value="<%= forgetque %>" readonly>
       <input type="hidden" name="forgetans" value="<%= forgetans %>" readonly>
       <input type="submit" class="cancelbtn" value="Create New Account">
      </form>
      <form action="../../oldacc" method="POST">
       <input type="hidden" name="isd" value="<%= isd %>" readonly>
       <input type="hidden" name="mobile" value="<%= mobile %>" readonly>
       <input type="hidden" name="email" value="<%= email %>" readonly>
       <input type="hidden" name="password" value="<%= password %>" readonly>
       <input type="hidden" name="forgetque" value="<%= forgetque %>" readonly>
       <input type="hidden" name="forgetans" value="<%= forgetans %>" readonly>
       <input type="submit" class="deletebtn" value="Backup Previous Account">
      </form>
     </div>
    </div>
   </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 </body>
</html>
