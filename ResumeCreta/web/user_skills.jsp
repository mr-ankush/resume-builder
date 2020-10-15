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
  <form action="../../../update_s_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <input type="hidden" name="pages" value="<%= pages %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Skills</b></h3>
    <p>Add your skills which beneficial in your work / workplace</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="s_1">Skill 1</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_1" id="s_1" placeholder="Not compulsary to fill all" value="<%= P.getS_1() %>" autocomplete="off" spellcheck="true" onfocus="selectText1()" onkeyup="hide1()">
       <select id="sv_1" name="sv_1">
        <%
        if(!P.getS_1().isEmpty())
        {
        %>
        <option value="">Select 1<sup>st</sup> Skill Strength</option>
        <option value="<%= P.getSv_1() %>" selected><%= P.getSv_1() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 1<sup>st</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_2">Skill 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_2" id="s_2" placeholder="Not compulsary to fill all" value="<%= P.getS_2() %>" autocomplete="off" spellcheck="true" onfocus="selectText2()" onkeyup="hide2()">
       <select id="sv_2" name="sv_2">
        <%
        if(!P.getS_2().isEmpty())
        {
        %>
        <option value="">Select 2<sup>nd</sup> Skill Strength</option>
        <option value="<%= P.getSv_2() %>" selected><%= P.getSv_2() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 2<sup>nd</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_3">Skill 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_3" id="s_3" placeholder="Not compulsary to fill all" value="<%= P.getS_3() %>" autocomplete="off" spellcheck="true" onfocus="selectText3()" onkeyup="hide3()">
       <select id="sv_3" name="sv_3">
        <%
        if(!P.getS_3().isEmpty())
        {
        %>
        <option value="">Select 3<sup>rd</sup> Skill Strength</option>
        <option value="<%= P.getSv_3() %>" selected><%= P.getSv_3() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 3<sup>rd</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_4">Skill 4</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_4" id="s_4" placeholder="Not compulsary to fill all" value="<%= P.getS_4() %>" autocomplete="off" spellcheck="true" onfocus="selectText4()" onkeyup="hide4()">
       <select id="sv_4" name="sv_4">
        <%
        if(!P.getS_4().isEmpty())
        {
        %>
        <option value="">Select 4<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_4() %>" selected><%= P.getSv_4() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 4<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_5">Skill 5</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_5" id="s_5" placeholder="Not compulsary to fill all" value="<%= P.getS_5() %>" autocomplete="off" spellcheck="true" onfocus="selectText5()" onkeyup="hide5()">
       <select id="sv_5" name="sv_5">
        <%
        if(!P.getS_5().isEmpty())
        {
        %>
        <option value="">Select 5<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_5() %>" selected><%= P.getSv_5() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 5<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_">Skill 6</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_6" id="s_6" placeholder="Not compulsary to fill all" value="<%= P.getS_6() %>" autocomplete="off" spellcheck="true" onfocus="selectText6()" onkeyup="hide6()">
       <select id="sv_6" name="sv_6">
        <%
        if(!P.getS_6().isEmpty())
        {
        %>
        <option value="">Select 1<sup>st</sup> Skill Strength</option>
        <option value="<%= P.getSv_6() %>" selected><%= P.getSv_6() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 6<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_">Skill 7</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_7" id="s_7" placeholder="Not compulsary to fill all" value="<%= P.getS_7() %>" autocomplete="off" spellcheck="true" onfocus="selectText7()" onkeyup="hide7()">
       <select id="sv_7" name="sv_7">
        <%
        if(!P.getS_7().isEmpty())
        {
        %>
        <option value="">Select 7<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_7() %>" selected><%= P.getSv_7() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 7<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_8">Skill 8</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_8" id="s_8" placeholder="Not compulsary to fill all" value="<%= P.getS_8() %>" autocomplete="off" spellcheck="true" onfocus="selectText8()" onkeyup="hide8()">
       <select id="sv_8" name="sv_8">
        <%
        if(!P.getS_8().isEmpty())
        {
        %>
        <option value="">Select 1<sup>st</sup> Skill Strength</option>
        <option value="<%= P.getSv_8() %>" selected><%= P.getSv_8() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 8<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_9">Skill 9</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_9" id="s_9" placeholder="Not compulsary to fill all" value="<%= P.getS_9() %>" autocomplete="off" spellcheck="true" onfocus="selectText9()" onkeyup="hide9()">
       <select id="sv_9" name="sv_9">
        <%
        if(!P.getS_9().isEmpty())
        {
        %>
        <option value="">Select 9<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_9() %>" selected><%= P.getSv_9() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 9<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_10">Skill 10</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_10" id="s_10" placeholder="Not compulsary to fill all" value="<%= P.getS_10() %>" autocomplete="off" spellcheck="true" onfocus="selectText10()" onkeyup="hide10()">
       <select id="sv_10" name="sv_10">
        <%
        if(!P.getS_10().isEmpty())
        {
        %>
        <option value="">Select 10<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_10() %>" selected><%= P.getSv_10() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 10<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_11">Skill 11</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_11" id="s_11" placeholder="Not compulsary to fill all" value="<%= P.getS_11() %>" autocomplete="off" spellcheck="true" onfocus="selectText11()" onkeyup="hide11()">
       <select id="sv_11" name="sv_11">
        <%
        if(!P.getS_11().isEmpty())
        {
        %>
        <option value="">Select 11<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_11() %>" selected><%= P.getSv_11() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 11<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_12">Skill 12</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_12" id="s_12" placeholder="Not compulsary to fill all" value="<%= P.getS_12() %>" autocomplete="off" spellcheck="true" onfocus="selectText12()" onkeyup="hide12()">
       <select id="sv_12" name="sv_12">
	<%
        if(!P.getS_12().isEmpty())
        {
        %>
        <option value="">Select 12<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_12() %>" selected><%= P.getSv_12() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 12<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_13">Skill 13</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_13" id="s_13" placeholder="Not compulsary to fill all" value="<%= P.getS_13() %>" autocomplete="off" spellcheck="true" onfocus="selectText13()" onkeyup="hide13()">
       <select id="sv_13" name="sv_13">
	<%
        if(!P.getS_13().isEmpty())
        {
        %>
        <option value="">Select 13<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_13() %>" selected><%= P.getSv_13() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 13<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_14">Skill 14</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_14" id="s_14" placeholder="Not compulsary to fill all" value="<%= P.getS_14() %>" autocomplete="off" spellcheck="true" onfocus="selectText14()" onkeyup="hide14()">
       <select id="sv_14" name="sv_14">
        <%
        if(!P.getS_14().isEmpty())
        {
        %>
        <option value="">Select 14<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_14() %>" selected><%= P.getSv_14() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 14<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="s_15">Skill 15</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_15" id="s_15" placeholder="Not compulsary to fill all" value="<%= P.getS_15() %>" autocomplete="off" spellcheck="true" onfocus="selectText15()" onkeyup="hide15()">
       <select id="sv_15" name="sv_15">
        <%
        if(!P.getS_15().isEmpty())
        {
        %>
        <option value="">Select 15<sup>th</sup> Skill Strength</option>
        <option value="<%= P.getSv_15() %>" selected><%= P.getSv_15() %>%</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 15<sup>th</sup> Skill Strength</option>
        <option value="40">40%</option>
        <option value="50">50%</option>
        <option value="60">60%</option>
        <option value="70">70%</option>
        <option value="80">80%</option>
        <option value="90">90%</option>
        <option value="95">95%</option>
        <option value="100">100%</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectText1() 
  {
    var input1 = document.getElementById("s_1");
    input1.focus();
    input1.select();
  }
  function selectText2()
  {
    var input2 = document.getElementById("s_2");
    input2.focus();
    input2.select();
  }
  function selectText3() 
  {
    var input3 = document.getElementById("s_3");
    input3.focus();
    input3.select();
  }
  function selectText4() 
  {
    var input4 = document.getElementById("s_4");
    input4.focus();
    input4.select();
  }
  function selectText5() 
  {
    var input5 = document.getElementById("s_5");
    input5.focus();
    input5.select();
  }
  function selectText6() 
  {
    var input6 = document.getElementById("s_6");
    input6.focus();
    input6.select();
  }
  function selectText7()
  {
    var input7 = document.getElementById("s_7");
    input7.focus();
    input7.select();
  }
  function selectText8() 
  {
    var input8 = document.getElementById("s_8");
    input8.focus();
    input8.select();
  }
  function selectText9() 
  {
    var input9 = document.getElementById("s_9");
    input9.focus();
    input9.select();
  }
  function selectText10() 
  {
    var input10 = document.getElementById("s_10");
    input10.focus();
    input10.select();
  }
  function selectText11() 
  {
    var input11 = document.getElementById("s_11");
    input11.focus();
    input11.select();
  }
  function selectText12()
  {
    var input12 = document.getElementById("s_12");
    input12.focus();
    input12.select();
  }
  function selectText13() 
  {
    var input13 = document.getElementById("s_13");
    input13.focus();
    input13.select();
  }
  function selectText14() 
  {
    var input14 = document.getElementById("s_14");
    input14.focus();
    input14.select();
  }
  function selectText15() 
  {
    var input15 = document.getElementById("s_15");
    input15.focus();
    input15.select();
  }
  var Input1 = document.getElementById("s_1").value;
  if(Input1=="")
  {
      document.getElementById("sv_1").disabled = true;
  }
  else
  {
      document.getElementById("sv_1").disabled = false;
  }
  var Input2 = document.getElementById("s_2").value;
  if(Input2=="")
  {
      document.getElementById("sv_2").disabled = true;
  }
  else
  {
      document.getElementById("sv_2").disabled = false;
  }
  var Input3 = document.getElementById("s_3").value;
  if(Input3=="")
  {
      document.getElementById("sv_3").disabled = true;
  }
  else
  {
      document.getElementById("sv_3").disabled = false;
  }
  var Input4 = document.getElementById("s_4").value;
  if(Input4=="")
  {
      document.getElementById("sv_4").disabled = true;
  }
  else
  {
      document.getElementById("sv_4").disabled = false;
  }
  var Input5 = document.getElementById("s_5").value;
  if(Input5=="")
  {
      document.getElementById("sv_5").disabled = true;
  }
  else
  {
      document.getElementById("sv_5").disabled = false;
  }
  var Input6 = document.getElementById("s_6").value;
  if(Input6=="")
  {
      document.getElementById("sv_6").disabled = true;
  }
  else
  {
      document.getElementById("sv_6").disabled = false;
  }
  var Input7 = document.getElementById("s_7").value;
  if(Input7=="")
  {
      document.getElementById("sv_7").disabled = true;
  }
  else
  {
      document.getElementById("sv_7").disabled = false;
  }
  var Input8 = document.getElementById("s_8").value;
  if(Input8=="")
  {
      document.getElementById("sv_8").disabled = true;
  }
  else
  {
      document.getElementById("sv_8").disabled = false;
  }
  var Input9 = document.getElementById("s_9").value;
  if(Input9=="")
  {
      document.getElementById("sv_9").disabled = true;
  }
  else
  {
      document.getElementById("sv_9").disabled = false;
  }
  var Input10 = document.getElementById("s_10").value;
  if(Input10=="")
  {
      document.getElementById("sv_10").disabled = true;
  }
  else
  {
      document.getElementById("sv_10").disabled = false;
  }
  var Input11 = document.getElementById("s_11").value;
  if(Input11=="")
  {
      document.getElementById("sv_11").disabled = true;
  }
  else
  {
      document.getElementById("sv_11").disabled = false;
  }
  var Input12 = document.getElementById("s_12").value;
  if(Input12=="")
  {
      document.getElementById("sv_12").disabled = true;
  }
  else
  {
      document.getElementById("sv_12").disabled = false;
  }
  var Input13 = document.getElementById("s_13").value;
  if(Input13=="")
  {
      document.getElementById("sv_13").disabled = true;
  }
  else
  {
      document.getElementById("sv_13").disabled = false;
  }
  var Input14 = document.getElementById("s_14").value;
  if(Input14=="")
  {
      document.getElementById("sv_14").disabled = true;
  }
  else
  {
      document.getElementById("sv_14").disabled = false;
  }
  var Input15 = document.getElementById("s_15").value;
  if(Input15=="")
  {
      document.getElementById("sv_15").disabled = true;
  }
  else
  {
      document.getElementById("sv_15").disabled = false;
  }
  function hide1() 
  {
    var Input1 = document.getElementById("s_1").value;
    if(Input1=="")
    {
      document.getElementById("sv_1").value = "";
      document.getElementById("sv_1").disabled = true;
    }
    else
    {
        document.getElementById("sv_1").disabled = false;
        document.getElementById("sv_1").required = true;
    }
  }
  function hide2() 
  {
    var Input2 = document.getElementById("s_2").value;
    if(Input2=="")
    {
      document.getElementById("sv_2").value = "";
      document.getElementById("sv_2").disabled = true;
    }
    else
    {
        document.getElementById("sv_2").disabled = false;
        document.getElementById("sv_2").required = true;
    }
  }
  function hide3()
  {
    var Input3 = document.getElementById("s_3").value;
    if(Input3=="")
    {
      document.getElementById("sv_3").value = "";
      document.getElementById("sv_3").disabled = true;
    }
    else
    {
        document.getElementById("sv_3").disabled = false;
        document.getElementById("sv_3").required = true;
    }
  }
  function hide4() 
  {
    var Input4 = document.getElementById("s_4").value;
    if(Input4=="")
    {
      document.getElementById("sv_4").value = "";
      document.getElementById("sv_4").disabled = true;
    }
    else
    {
        document.getElementById("sv_4").disabled = false;
        document.getElementById("sv_4").required = true;
    }
  }
  function hide5() 
  {
    var Input5 = document.getElementById("s_5").value;
    if(Input5=="")
    {
      document.getElementById("sv_5").value = "";
      document.getElementById("sv_5").disabled = true;
    }
    else
    {
        document.getElementById("sv_5").disabled = false;
        document.getElementById("sv_5").required = true;
    }
  }
  function hide6() 
  {
    var Input6 = document.getElementById("s_6").value;
    if(Input6=="")
    {
      document.getElementById("sv_6").value = "";
      document.getElementById("sv_6").disabled = true;
    }
    else
    {
        document.getElementById("sv_6").disabled = false;
        document.getElementById("sv_6").required = true;
    }
  }
  function hide7() 
  {
    var Input7 = document.getElementById("s_7").value;
    if(Input7=="")
    {
      document.getElementById("sv_7").value = "";
      document.getElementById("sv_7").disabled = true;
    }
    else
    {
        document.getElementById("sv_7").disabled = false;
        document.getElementById("sv_7").required = true;
    }
  }
  function hide8()
  {
    var Input8 = document.getElementById("s_8").value;
    if(Input8=="")
    {
      document.getElementById("sv_8").value = "";
      document.getElementById("sv_8").disabled = true;
    }
    else
    {
        document.getElementById("sv_8").disabled = false;
        document.getElementById("sv_8").required = true;
    }
  }
  function hide9() 
  {
    var Input9 = document.getElementById("s_9").value;
    if(Input9=="")
    {
      document.getElementById("sv_9").value = "";
      document.getElementById("sv_9").disabled = true;
    }
    else
    {
        document.getElementById("sv_9").disabled = false;
        document.getElementById("sv_9").required = true;
    }
  }
  function hide10() 
  {
    var Input10 = document.getElementById("s_10").value;
    if(Input10=="")
    {
      document.getElementById("sv_10").value = "";
      document.getElementById("sv_10").disabled = true;
    }
    else
    {
        document.getElementById("sv_10").disabled = false;
        document.getElementById("sv_10").required = true;
    }
  }
  function hide11() 
  {
    var Input11 = document.getElementById("s_11").value;
    if(Input11=="")
    {
      document.getElementById("sv_11").value = "";
      document.getElementById("sv_11").disabled = true;
    }
    else
    {
        document.getElementById("sv_11").disabled = false;
        document.getElementById("sv_11").required = true;
    }
  }
  function hide12() 
  {
    var Input12 = document.getElementById("s_12").value;
    if(Input12=="")
    {
      document.getElementById("sv_12").value = "";
      document.getElementById("sv_12").disabled = true;
    }
    else
    {
        document.getElementById("sv_12").disabled = false;
        document.getElementById("sv_12").required = true;
    }
  }
  function hide13()
  {
    var Input13 = document.getElementById("s_13").value;
    if(Input13=="")
    {
      document.getElementById("sv_13").value = "";
      document.getElementById("sv_13").disabled = true;
    }
    else
    {
        document.getElementById("sv_13").disabled = false;
        document.getElementById("sv_13").required = true;
    }
  }
  function hide14() 
  {
    var Input14 = document.getElementById("s_14").value;
    if(Input14=="")
    {
      document.getElementById("sv_14").value = "";
      document.getElementById("sv_14").disabled = true;
    }
    else
    {
        document.getElementById("sv_14").disabled = false;
        document.getElementById("sv_14").required = true;
    }
  }
  function hide15() 
  {
    var Input15 = document.getElementById("s_15").value;
    if(Input15=="")
    {
      document.getElementById("sv_15").value = "";
      document.getElementById("sv_15").disabled = true;
    }
    else
    {
        document.getElementById("sv_15").disabled = false;
        document.getElementById("sv_15").required = true;
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