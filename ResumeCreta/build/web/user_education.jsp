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
  <script src="http://localhost:8084/ResumeCreta/js/profile_edit.js"></script>
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
      <li class="nav-item"> <a class="nav-link" href="../../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a> </li>
      <li class="nav-item"> <a class="nav-link text-primary" href="../../../signout" style="cursor:pointer;">Log-Out !</a> </li>
      <li><a id="google_translate_element"></a></li>
     </ul>
     </div>
    </div>
  </nav>
  <br><br><br><br>
  <form action="../../../update_edu_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <input type="hidden" name="pages" value="<%= pages %>">
    <div class="container">
    <hr style="background-color: black;">
    <h3><b>Education Detail</b></h3>
    <p>Fill qualification detail (fill degree's in increasing order of level):</p>
    <div class="row-12">
     <h6><b>Education Detail 1:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_1">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_1" name="degree_1" id="deg1" placeholder="Fill degree carefully" value="<%= P.getDegree_1() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg1()" onkeyup="hide1()">
       <datalist id="degree_1" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="High School">High School 10<sup>th</sup></option>
        <option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
        <option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
        <option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
        <option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
        <option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
        <option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
        <option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
        <option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
        <option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_1">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_1" name="affiliate_1" id="aff1" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_1() %>" autocomplete="off" spellcheck="true" onfocus="selectaff1()" onkeyup="">
       <datalist id="affiliate_1" style="display:none">
	<option value="-">Custom Fill</option>
	<option value="M.P. Board">M.P. Board</option>
	<option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_1">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_1" id="ins1" placeholder="Institute name" value="<%= P.getInstitute_1() %>" autocomplete="off" spellcheck="true" onfocus="selectins1()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_1">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_1" id="sco1" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_1() %>" autocomplete="off" spellcheck="true" onfocus="selectsco1()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_1">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_1" id="ses1" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_1() %>" autocomplete="off" spellcheck="true" onfocus="selectses1()" onkeyup="">
      </div>
     </div>
     <h6><b>Education Detail 2:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_2">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_2" name="degree_2" id="deg2" placeholder="Fill degree carefully" value="<%= P.getDegree_2() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg2()" onkeyup="hide2()">
       <datalist id="degree_2" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="High School">High School 10<sup>th</sup></option>
        <option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
        <option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
        <option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
        <option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
	<option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
	<option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
	<option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
	<option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_2">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_2" name="affiliate_2" id="aff2" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_2() %>" autocomplete="off" spellcheck="true" onfocus="selectaff2()" onkeyup="">
       <datalist id="affiliate_2" style="display:none">
        <option value="-">Custom Fill</option>
	<option value="M.P. Board">M.P. Board</option>
	<option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_2">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_2" id="ins2" placeholder="Institute name" value="<%= P.getInstitute_2() %>" autocomplete="off" spellcheck="true" onfocus="selectins2()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_2">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_2" id="sco2" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_2() %>" autocomplete="off" spellcheck="true" onfocus="selectsco2()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_2">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_2" id="ses2" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_2() %>" autocomplete="off" spellcheck="true" onfocus="selectses2()" onkeyup="">
      </div>
     </div>
     <h6><b>Education Detail 3:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_3">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_3" name="degree_3" id="deg3" placeholder="Fill degree carefully" value="<%= P.getDegree_3() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg3()" onkeyup="hide3()">
       <datalist id="degree_3" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="High School">High School 10<sup>th</sup></option>
        <option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
        <option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
	<option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
	<option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
	<option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
	<option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
	<option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_3">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_3" name="affiliate_3" id="aff3" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_3() %>" autocomplete="off" spellcheck="true" onfocus="selectaff3()" onkeyup="">
       <datalist id="affiliate_3" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="M.P. Board">M.P. Board</option>
	<option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_3">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_3" id="ins3" placeholder="Institute name" value="<%= P.getInstitute_3() %>" autocomplete="off" spellcheck="true" onfocus="selectins3()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_3">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_3" id="sco3" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_3() %>" autocomplete="off" spellcheck="true" onfocus="selectsco3()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_3">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_3" id="ses3" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_3() %>" autocomplete="off" spellcheck="true" onfocus="selectses3()" onkeyup="">
      </div>
     </div>
     <h6><b>Education Detail 4:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_4">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_4" name="degree_4" id="deg4" placeholder="Fill degree carefully" value="<%= P.getDegree_4() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg4()" onkeyup="hide4()">
       <datalist id="degree_4" style="display:none">
        <option value="-">Custom Fill</option>
	<option value="High School">High School 10<sup>th</sup></option>
	<option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
	<option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
	<option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
	<option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
        <option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
	<option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
	<option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_4">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_4" name="affiliate_4" id="aff4" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_4() %>" autocomplete="off" spellcheck="true" onfocus="selectaff4()" onkeyup="">
       <datalist id="affiliate_4" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="M.P. Board">M.P. Board</option>
	<option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_4">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_4" id="ins4" placeholder="Institute name" value="<%= P.getInstitute_4() %>" autocomplete="off" spellcheck="true" onfocus="selectins4()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_4">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_4" id="sco4" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_4() %>" autocomplete="off" spellcheck="true" onfocus="selectsco4()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_4">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_4" id="ses4" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_4() %>" autocomplete="off" spellcheck="true" onfocus="selectses4()" onkeyup="">
      </div>
     </div>
     <h6><b>Education Detail 5:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_5">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_5" name="degree_5" id="deg5" placeholder="Fill degree carefully" value="<%= P.getDegree_5() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg5()" onkeyup="hide5()">
       <datalist id="degree_5" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="High School">High School 10<sup>th</sup></option>
        <option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
        <option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
	<option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
	<option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
	<option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
	<option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
	<option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_5">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_5" name="affiliate_5" id="aff5" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_5() %>" autocomplete="off" spellcheck="true" onfocus="selectaff5()" onkeyup="">
       <datalist id="affiliate_5" style="display:none">
        <option value="-">Custom Fill</option>
	<option value="M.P. Board">M.P. Board</option>
	<option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_5">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_5" id="ins5" placeholder="Institute name" value="<%= P.getInstitute_5() %>" autocomplete="off" spellcheck="true" onfocus="selectins5()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_5">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_5" id="sco5" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_5() %>" autocomplete="off" spellcheck="true" onfocus="selectsco5()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_5">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_5" id="ses5" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_5() %>" autocomplete="off" spellcheck="true" onfocus="selectses5()" onkeyup="">
      </div>
     </div>
     <h6><b>Education Detail 6:</b></h6>
     <div class="row">
      <div class="col-25">
       <label for="degree_6">Degree</label>
      </div>
      <div class="col-75">
       <input list="degree_6" name="degree_6" id="deg6" placeholder="Fill degree carefully" value="<%= P.getDegree_6() %>" autocomplete="off" spellcheck="true" onfocus="selectdeg6()" onkeyup="hide6()">
       <datalist id="degree_6" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="High School">High School 10<sup>th</sup></option>
	<option value="Intermediate (Maths & Science)">Intermediate (Maths-Science)</option>
	<option value="Intermediate (Biology & Science)">Intermediate (Biology-Science)</option>
	<option value="Intermediate (Commerce-Computer)">Intermediate (Commerce-Computer)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Commerce-Maths)</option>
	<option value="Intermediate (Commerce-Maths)">Intermediate (Arts)</option>
	<option value="Diploma - ">Diploma - [DIPLOMA_NAME]</option>
	<option value="UG - ">Under Graduation - [DEGREE_NAME]</option>
	<option value="PG - ">Post Graduation - [DEGREE_NAME]</option>
	<option value="Ph.D. - ">Ph.D. - [DEGREE_NAME]</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="affiliate_6">Affiliate</label>
      </div>
      <div class="col-75">
       <input list="affiliate_6" name="affiliate_6" id="aff6" placeholder="Fill affiliation carefully" value="<%= P.getAffiliate_6() %>" autocomplete="off" spellcheck="true" onfocus="selectaff6()" onkeyup="">
       <datalist id="affiliate_6" style="display:none">
        <option value="-">Custom Fill</option>
        <option value="M.P. Board">M.P. Board</option>
        <option value="C.B.S.E.">C.B.S.E.</option>
       </datalist>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="institute_6">Institute</label>
      </div>
      <div class="col-75">
       <input type="text" name="institute_6" id="ins6" placeholder="Institute name" value="<%= P.getInstitute_6() %>" autocomplete="off" spellcheck="true" onfocus="selectins6()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="score_6">Score</label>
      </div>
      <div class="col-75">
       <input type="text" name="score_6" id="sco6" placeholder="eg. 75.53%, 8.30CGPA, etc." value="<%= P.getScore_6() %>" autocomplete="off" spellcheck="true" onfocus="selectsco6()" onkeyup="">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="session_6">Session</label>
      </div>
      <div class="col-75">
       <input type="text" name="session_6" id="ses6" placeholder="eg. 2014 - 2017 , 2017 - CURRENT, etc." value="<%= P.getSession_6() %>" autocomplete="off" spellcheck="true" onfocus="selectses6()" onkeyup="">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectdeg1() 
  {
    var deg1 = document.getElementById("deg1");
    deg1.focus();
    deg1.select();
  }
  function selectdeg2()
  {
    var deg2 = document.getElementById("deg2");
    deg2.focus();
    deg2.select();
  }
  function selectdeg3() 
  {
    var deg3 = document.getElementById("deg3");
    deg3.focus();
    deg3.select();
  }
  function selectdeg4() 
  {
    var deg4 = document.getElementById("deg4");
    deg4.focus();
    deg4.select();
  }
  function selectdeg5() 
  {
    var deg5 = document.getElementById("deg5");
    deg5.focus();
    deg5.select();
  }
  function selectdeg6() 
  {
    var deg6 = document.getElementById("deg6");
    deg6.focus();
    deg6.select();
  }
  function selectaff1() 
  {
    var aff1 = document.getElementById("aff1");
    aff1.focus();
    aff1.select();
  }
  function selectaff2()
  {
    var aff2 = document.getElementById("aff2");
    aff2.focus();
    aff2.select();
  }
  function selectaff3() 
  {
    var aff3 = document.getElementById("aff3");
    aff3.focus();
    aff3.select();
  }
  function selectaff4() 
  {
    var aff4 = document.getElementById("aff4");
    aff4.focus();
    aff4.select();
  }
  function selectaff5() 
  {
    var aff5 = document.getElementById("aff5");
    aff5.focus();
    aff5.select();
  }
  function selectaff6() 
  {
    var aff6 = document.getElementById("aff6");
    aff6.focus();
    aff6.select();
  }
  function selectins1() 
  {
    var ins1 = document.getElementById("ins1");
    ins1.focus();
    ins1.select();
  }
  function selectins2()
  {
    var ins2 = document.getElementById("ins2");
    ins2.focus();
    ins2.select();
  }
  function selectins3() 
  {
    var ins3 = document.getElementById("ins3");
    ins3.focus();
    ins3.select();
  }
  function selectins4() 
  {
    var ins4 = document.getElementById("ins4");
    ins4.focus();
    ins4.select();
  }
  function selectins5() 
  {
    var ins5 = document.getElementById("ins5");
    ins5.focus();
    ins5.select();
  }
  function selectins6() 
  {
    var ins6 = document.getElementById("ins6");
    ins6.focus();
    ins6.select();
  }
  function selectsco1() 
  {
    var sco1 = document.getElementById("sco1");
    sco1.focus();
    sco1.select();
  }
  function selectsco2()
  {
    var sco2 = document.getElementById("sco2");
    sco2.focus();
    sco2.select();
  }
  function selectsco3() 
  {
    var sco3 = document.getElementById("sco3");
    sco3.focus();
    sco3.select();
  }
  function selectsco4() 
  {
    var sco4 = document.getElementById("sco4");
    sco4.focus();
    sco4.select();
  }
  function selectsco5() 
  {
    var sco5 = document.getElementById("sco5");
    sco5.focus();
    sco5.select();
  }
  function selectsco6() 
  {
    var sco6 = document.getElementById("sco6");
    sco6.focus();
    sco6.select();
  }
  function selectses1() 
  {
    var ses1 = document.getElementById("ses1");
    ses1.focus();
    ses1.select();
  }
  function selectses2()
  {
    var ses2 = document.getElementById("ses2");
    ses2.focus();
    ses2.select();
  }
  function selectses3() 
  {
    var ses3 = document.getElementById("ses3");
    ses3.focus();
    ses3.select();
  }
  function selectses4() 
  {
    var ses4 = document.getElementById("ses4");
    ses4.focus();
    ses4.select();
  }
  function selectses5() 
  {
    var ses5 = document.getElementById("ses5");
    ses5.focus();
    ses5.select();
  }
  function selectses6() 
  {
    var ses6 = document.getElementById("ses6");
    ses6.focus();
    ses6.select();
  }
  var Deg1 = document.getElementById("deg1").value;
  var Deg2 = document.getElementById("deg2").value;
  var Deg3 = document.getElementById("deg3").value;
  var Deg4 = document.getElementById("deg4").value;
  var Deg5 = document.getElementById("deg5").value;
  var Deg6 = document.getElementById("deg6").value;
  if(Deg1=="")
  {
      document.getElementById("aff1").value = "";
      document.getElementById("ins1").value = "";
      document.getElementById("sco1").value = "";
      document.getElementById("ses1").value = "";
      document.getElementById("aff1").disabled = true;
      document.getElementById("ins1").disabled = true;
      document.getElementById("sco1").disabled = true;
      document.getElementById("ses1").disabled = true;
  }
  else
  {
      document.getElementById("aff1").disabled = false;
      document.getElementById("ins1").disabled = false;
      document.getElementById("sco1").disabled = false;
      document.getElementById("ses1").disabled = false;
  }
  if(Deg2=="")
  {
      document.getElementById("aff2").value = "";
      document.getElementById("ins2").value = "";
      document.getElementById("sco2").value = "";
      document.getElementById("ses2").value = "";
      document.getElementById("aff2").disabled = true;
      document.getElementById("ins2").disabled = true;
      document.getElementById("sco2").disabled = true;
      document.getElementById("ses2").disabled = true;
  }
  else
  {
      document.getElementById("aff2").disabled = false;
      document.getElementById("ins2").disabled = false;
      document.getElementById("sco2").disabled = false;
      document.getElementById("ses2").disabled = false;
  }
  if(Deg3=="")
  {
      document.getElementById("aff3").value = "";
      document.getElementById("ins3").value = "";
      document.getElementById("sco3").value = "";
      document.getElementById("ses3").value = "";
      document.getElementById("aff3").disabled = true;
      document.getElementById("ins3").disabled = true;
      document.getElementById("sco3").disabled = true;
      document.getElementById("ses3").disabled = true;
  }
  else
  {
      document.getElementById("aff3").disabled = false;
      document.getElementById("ins3").disabled = false;
      document.getElementById("sco3").disabled = false;
      document.getElementById("ses3").disabled = false;
  }
  if(Deg4=="")
  {
      document.getElementById("aff4").value = "";
      document.getElementById("ins4").value = "";
      document.getElementById("sco4").value = "";
      document.getElementById("ses4").value = "";
      document.getElementById("aff4").disabled = true;
      document.getElementById("ins4").disabled = true;
      document.getElementById("sco4").disabled = true;
      document.getElementById("ses4").disabled = true;
  }
  else
  {
      document.getElementById("aff4").disabled = false;
      document.getElementById("ins4").disabled = false;
      document.getElementById("sco4").disabled = false;
      document.getElementById("ses4").disabled = false;
  }
  if(Deg5=="")
  {
      document.getElementById("aff5").value = "";
      document.getElementById("ins5").value = "";
      document.getElementById("sco5").value = "";
      document.getElementById("ses5").value = "";
      document.getElementById("aff5").disabled = true;
      document.getElementById("ins5").disabled = true;
      document.getElementById("sco5").disabled = true;
      document.getElementById("ses5").disabled = true;
  }
  else
  {
      document.getElementById("aff5").disabled = false;
      document.getElementById("ins5").disabled = false;
      document.getElementById("sco5").disabled = false;
      document.getElementById("ses5").disabled = false;
  }
  if(Deg6=="")
  {
      document.getElementById("aff6").value = "";
      document.getElementById("ins6").value = "";
      document.getElementById("sco6").value = "";
      document.getElementById("ses6").value = "";
      document.getElementById("aff6").disabled = true;
      document.getElementById("ins6").disabled = true;
      document.getElementById("sco6").disabled = true;
      document.getElementById("ses6").disabled = true;
  }
  else
  {
      document.getElementById("aff6").disabled = false;
      document.getElementById("ins6").disabled = false;
      document.getElementById("sco6").disabled = false;
      document.getElementById("ses6").disabled = false;
  }
  function hide1()
  {
    var Input1 = document.getElementById("deg1").value;
    if(Input1=="")
    {
      document.getElementById("aff1").value = "";
      document.getElementById("ins1").value = "";
      document.getElementById("sco1").value = "";
      document.getElementById("ses1").value = "";
      document.getElementById("aff1").disabled = true;
      document.getElementById("ins1").disabled = true;
      document.getElementById("sco1").disabled = true;
      document.getElementById("ses1").disabled = true;
    }
    else
    {
      document.getElementById("aff1").disabled = false;
      document.getElementById("ins1").disabled = false;
      document.getElementById("sco1").disabled = false;
      document.getElementById("ses1").disabled = false;
      document.getElementById("aff1").required = true;
      document.getElementById("ins1").required = true;
      document.getElementById("sco1").required = true;
      document.getElementById("ses1").required = true;
    }
  }
  function hide2()
  {
    var Input2 = document.getElementById("deg2").value;
    if(Input2=="")
    {
      document.getElementById("aff2").value = "";
      document.getElementById("ins2").value = "";
      document.getElementById("sco2").value = "";
      document.getElementById("ses2").value = "";
      document.getElementById("aff2").disabled = true;
      document.getElementById("ins2").disabled = true;
      document.getElementById("sco2").disabled = true;
      document.getElementById("ses2").disabled = true;
    }
    else
    {
      document.getElementById("aff2").disabled = false;
      document.getElementById("ins2").disabled = false;
      document.getElementById("sco2").disabled = false;
      document.getElementById("ses2").disabled = false;
      document.getElementById("aff2").required = true;
      document.getElementById("ins2").required = true;
      document.getElementById("sco2").required = true;
      document.getElementById("ses2").required = true;
    }
  }
  function hide3()
  {
    var Input3 = document.getElementById("deg3").value;
    if(Input3=="")
    {
      document.getElementById("aff3").value = "";
      document.getElementById("ins3").value = "";
      document.getElementById("sco3").value = "";
      document.getElementById("ses3").value = "";
      document.getElementById("aff3").disabled = true;
      document.getElementById("ins3").disabled = true;
      document.getElementById("sco3").disabled = true;
      document.getElementById("ses3").disabled = true;
    }
    else
    {
      document.getElementById("aff3").disabled = false;
      document.getElementById("ins3").disabled = false;
      document.getElementById("sco3").disabled = false;
      document.getElementById("ses3").disabled = false;
      document.getElementById("aff3").required = true;
      document.getElementById("ins3").required = true;
      document.getElementById("sco3").required = true;
      document.getElementById("ses3").required = true;
    }
  }
  function hide4()
  {
    var Input4 = document.getElementById("deg4").value;
    if(Input4=="")
    {
      document.getElementById("aff4").value = "";
      document.getElementById("ins4").value = "";
      document.getElementById("sco4").value = "";
      document.getElementById("ses4").value = "";
      document.getElementById("aff4").disabled = true;
      document.getElementById("ins4").disabled = true;
      document.getElementById("sco4").disabled = true;
      document.getElementById("ses4").disabled = true;
    }
    else
    {
      document.getElementById("aff4").disabled = false;
      document.getElementById("ins4").disabled = false;
      document.getElementById("sco4").disabled = false;
      document.getElementById("ses4").disabled = false;
      document.getElementById("aff4").required = true;
      document.getElementById("ins4").required = true;
      document.getElementById("sco4").required = true;
      document.getElementById("ses4").required = true;
    }
  }
  function hide5()
  {
    var Input5 = document.getElementById("deg5").value;
    if(Input5=="")
    {
      document.getElementById("aff5").value = "";
      document.getElementById("ins5").value = "";
      document.getElementById("sco5").value = "";
      document.getElementById("ses5").value = "";
      document.getElementById("aff5").disabled = true;
      document.getElementById("ins5").disabled = true;
      document.getElementById("sco5").disabled = true;
      document.getElementById("ses5").disabled = true;
    }
    else
    {
      document.getElementById("aff5").disabled = false;
      document.getElementById("ins5").disabled = false;
      document.getElementById("sco5").disabled = false;
      document.getElementById("ses5").disabled = false;
      document.getElementById("aff5").required = true;
      document.getElementById("ins5").required = true;
      document.getElementById("sco5").required = true;
      document.getElementById("ses5").required = true;
    }
  }
  function hide6()
  {
    var Input6 = document.getElementById("deg6").value;
    if(Input6=="")
    {
      document.getElementById("aff6").value = "";
      document.getElementById("ins6").value = "";
      document.getElementById("sco6").value = "";
      document.getElementById("ses6").value = "";
      document.getElementById("aff6").disabled = true;
      document.getElementById("ins6").disabled = true;
      document.getElementById("sco6").disabled = true;
      document.getElementById("ses6").disabled = true;
    }
    else
    {
      document.getElementById("aff6").disabled = false;
      document.getElementById("ins6").disabled = false;
      document.getElementById("sco6").disabled = false;
      document.getElementById("ses6").disabled = false;
      document.getElementById("aff6").required = true;
      document.getElementById("ins6").required = true;
      document.getElementById("sco6").required = true;
      document.getElementById("ses6").required = true;
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