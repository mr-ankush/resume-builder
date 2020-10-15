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
      <li class="nav-item"> <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a> </li>
      <li class="nav-item"> <a class="nav-link text-primary" href="../../signout" style="cursor:pointer;">Log-Out !</a> </li>
      <li><a id="google_translate_element"></a></li>
     </ul>
     </div>
    </div>
  </nav>
  <br><br><br><br>
  <form action="../../update_cv_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <h3><b>CV/Resume Type</b></h3>
    <p>Basic detail of portfolio:</p>
    <div class="row-12">
     <label for="cv_type">CV Type</label>
     <select name="cv_type" required autofocus="on">
      <%
      if(P.getCv_type().equalsIgnoreCase("Resume"))
      {
      %>   
      <optgroup label="Resume (for fresher's)"></optgroup>
      <option value="<%= P.getCv_type() %>" selected><%= P.getCv_type() %></option>
      <optgroup label="Curriculum Vitae (for expecience)"></optgroup>
      <option value="Curriculum Vitae">Curriculum Vitae</option>
      <%
      }
      else
      {
      %>   
      <optgroup label="Resume (for fresher's)"></optgroup>
      <option value="Resume">Resume</option>
      <optgroup label="Curriculum Vitae (for expecience)"></optgroup>
      <option value="<%= P.getCv_type() %>" selected><%= P.getCv_type() %></option>
      <%
      }
      %>
     </select>
     <label for="cv_theme">CV Theme</label>
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-teal">Teal</i>&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-green">Green</i>&nbsp;&nbsp;&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-blue">Blue</i>&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-deep-purple">DeepPurple</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-deep-orange">DeepOrange</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-brown">Brown</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <i class="fa fa-certificate fa-fw w3-margin-left w3-text-dark-gray">DarkGray</i>
     <select name="cv_theme" required autofocus="on">
      <%
      if(P.getCv_theme().equalsIgnoreCase("teal"))
      {
      %>
      <option value="teal" selected>Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("green"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green" selected>Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("blue"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue" selected>Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("deep-purple"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple" selected>Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("deep-orange"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange" selected>Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("brown"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown" selected>Brown</option>
      <option value="dark-gray">Dark Gray</option>
      <%
      }
      if(P.getCv_theme().equalsIgnoreCase("dark-gray"))
      {
      %>
      <option value="teal">Default - Teal</option>
      <option value="green">Green</option>
      <option value="blue">Blue</option>
      <option value="deep-purple">Deep Purple</option>
      <option value="deep-orange">Deep Orange</option>
      <option value="brown">Brown</option>
      <option value="dark-gray" selected>Dark Gray</option>
      <%
      }
      %>
     </select>
     <label for="cv_designation">Designation/Position</label>
     <input list="cv_designation" name="cv_designation" id="cv_designation" value="<%= P.getCv_designation() %>" required autofocus="on" autocomplete="off" onfocus="selecttype()">
     <datalist id="cv_designation" style="display:none">
      <option value="Search for "">Search for [FILL JOB TITLE]</option>
      <option value="Work as an ">Work as an [FILL JOB TITLE]</option>
     </datalist>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  // cv type
    function selecttype()
    {
      var type = document.getElementById("cv_designation");
      type.focus();
      type.select();
    }
  </script>
    
  <form action="../../update_pd_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color:black;">
    <h3><b>Personal Detail</b></h3>
    <p>Fill carefully candidate's personal detail:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="name">Candidate Name</label>
      </div>
      <div class="col-75">
       <input type="text" id="firstname" name="firstname" placeholder="First name" value="<%= P.getFirstname() %>" required autocomplete="off" onfocus="selectfirstname()">
       <input type="text" id="lastname" name="lastname" placeholder="Last name" value="<%= P.getLastname() %>" required autocomplete="off" onfocus="selectlastname()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="f_name">Candidate Father's Name</label>
      </div>
      <div class="col-75">
       <%
       int f;
       String f_title=null,f_name=null;
       f = P.getF_name().indexOf(' ');
       f_title = P.getF_name().substring(0,f);
       f_name = P.getF_name().substring(f+1);
       %>
       <select id="f_title" name="f_title" required>
        <%
        if(f_title.equalsIgnoreCase("Mr."))
        {
        %>
        <option value="Mr." selected>Mr.</option>
	<option value="Late">Late</option>
        <%
        }
        if(f_title.equalsIgnoreCase("Late"))
        {
        %>
        <option value="Mr.">Mr.</option>
	<option value="Late" selected>Late</option>
        <%
        }
        %>
       </select>
       <input type="text" id="fname" name="f_name" placeholder="Father name" value="<%= f_name %>"  required autocomplete="off" onfocus="selectfname()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="m_name">Candidate Mother's Name</label>
      </div>
      <div class="col-75">
      <%
      int m;
      String m_title=null,m_name=null;
      m = P.getM_name().indexOf(' ');
      m_title = P.getM_name().substring(0,m);
      m_name = P.getM_name().substring(m+1);
      %>
      <select id="m_title" name="m_title" required>
        <%
        if(m_title.equalsIgnoreCase("Mrs."))
        {
        %>
        <option value="Mrs." selected>Mrs.</option>
	<option value="Late">Late</option>
        <%
        }
        if(m_title.equalsIgnoreCase("Late"))
        {
        %>
        <option value="Mrs.">Mrs.</option>
	<option value="Late" selected>Late</option>
        <%
        }
        %>
       </select>
       <input type="text" id="mname" name="m_name" placeholder="Mother name" value="<%= m_name %>"  required autocomplete="off" onfocus="selectmname()()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="dob">Candidate Date Of Birth</label>
      </div>
      <div class="col-75">
       <%
       String dob=null;
       dob = P.getDob_year()+"-"+P.getDob_month()+"-"+P.getDob_date();
       %>
       <input type="date" id="dob" name="dob" value="<%= dob %>">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="gender">Gender</label>
      </div>
      <div class="col-75">
       <select id="gender" name="gender" required>
        <%
        if(P.getGender().equalsIgnoreCase("Male"))
        {
        %>
        <option value="Male" selected>Male</option>
	<option value="Female">Female</option>
	<option value="Others">Others</option>
        <%
        }
        if(P.getGender().equalsIgnoreCase("Female"))
        {
        %>
        <option value="Male">Male</option>
        <option value="Female" selected>Female</option>
	<option value="Others">Others</option>
        <%
        }
        if(P.getGender().equalsIgnoreCase("Others"))
        {
        %>
        <option value="Male">Male</option>
	<option value="Female">Female</option>
	<option value="Others" selected>Others</option>
        <%
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="altmobile">Alternate Contact Number</label>
      </div>
      <div class="col-75">
       <input type="text" id="altmobile" name="altmobile" placeholder="Alternate Contact Number" maxlength="10" value="<%= P.getAltmobile() %>" required autocomplete="off" onfocus="selectaltmobile()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="la_city">City</label>
      </div>
      <div class="col-75">
       <input type="text" id="la_city" name="la_city" placeholder="Currently live in city" value="<%= P.getLa_city() %>" required autocomplete="off" onfocus="selectcity()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="la_state">State</label>
      </div>
      <div class="col-75">
       <input type="text" id="la_state" name="la_state" placeholder="Currently live in state" value="<%= P.getLa_state() %>" required autocomplete="off" onfocus="selectstate()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="la_country">Country</label>
      </div>
      <div class="col-75">
       <input type="text" id="la_country" name="la_country" placeholder="Currently live in country" value="<%= P.getLa_country() %>" required autocomplete="off" onfocus="selectcountry()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="nationality">Nationality</label>
      </div>
      <div class="col-75">
       <input type="text" id="nationality" name="nationality" placeholder="Currently live in country" value="<%= P.getNationality() %>" required autocomplete="off" onfocus="selectnationality()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="permanentadd">Permanent Address</label>
      </div>
      <div class="col-75">
       <textarea id="permanentadd" name="permanentadd" placeholder="Resident address/Home town" style="height:100px" required autocomplete="off" onfocus="selectadd()"><%= P.getPermanentadd() %></textarea>
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  // info
    function selectfirstname()
    {
      var firstname = document.getElementById("firstname");
      firstname.focus();
      firstname.select();
    }
    function selectlastname()
    {
      var lastname = document.getElementById("lastname");
      lastname.focus();
      lastname.select();
    }
    function selectfname()
    {
      var fname = document.getElementById("fname");
      fname.focus();
      fname.select();
    }
    function selectmname()
    {
      var mname = document.getElementById("mname");
      mname.focus();
      mname.select();
    }
    function selectaltmobile()
    {
      var altmobile = document.getElementById("altmobile");
      altmobile.focus();
      altmobile.select();
    }
    function selectcity()
    {
      var la_city = document.getElementById("la_city");
      la_city.focus();
      la_city.select();
    }
    function selectstate()
    {
      var la_state = document.getElementById("la_state");
      la_state.focus();
      la_state.select();
    }
    function selectcountry()
    {
      var la_country = document.getElementById("la_country");
      la_country.focus();
      la_country.select();
    }
    function selectnationality()
    {
      var nationality = document.getElementById("nationality");
      nationality.focus();
      nationality.select();
    }
    function selectadd()
    {
      var add = document.getElementById("permanentadd");
      add.focus();
      add.select();
    }    
  </script>
    
  <form action="../../update_lk_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Language Known</b></h3>
    <p>Add language's which you know better:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="lk_1">Language 1</label>
      </div>
      <div class="col-75">
       <input type="text" name="lk_1" id="lk_1" placeholder="Not compulsary to fill all" value="<%= P.getLk_1() %>" autocomplete="off" spellcheck="true" onfocus="selectlk1()" onkeyup="hidelk1()"> 
       <select id="lkv_1" name="lkv_1">
        <%
        if(!P.getLk_1().isEmpty())
        {
        %>
        <option value="">Select 1<sup>st</sup> language Accuracy</option>
        <option value="<%= P.getLkv_1() %>" selected><%= P.getLkv_1() %></option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 1<sup>st</sup> language Accuracy</option>        
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%    
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="lk_2">Language 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="lk_2" id="lk_2" placeholder="Not compulsary to fill all" value="<%= P.getLk_2() %>" autocomplete="off" spellcheck="true" onfocus="selectlk2()" onkeyup="hidelk2()">
       <select id="lkv_2" name="lkv_2">
        <option value="">Select 2<sup>nd</sup> language Accuracy</option>
        <%
        if(!P.getLk_2().isEmpty())
        {
        %>
        <option value="">Select 2<sup>nd</sup> language Accuracy</option>
        <option value="<%= P.getLkv_2() %>" selected><%= P.getLkv_2() %></option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 2<sup>nd</sup> language Accuracy</option>        
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%    
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="lk_3">Language 3</label>
      </div>
      <div class="col-75">
       <input type="text" name="lk_3" id="lk_3" placeholder="Not compulsary to fill all" value="<%= P.getLk_3() %>" autocomplete="off" spellcheck="true" onfocus="selectlk3()" onkeyup="hidelk3()">
       <select id="lkv_3" name="lkv_3">
        <%
        if(!P.getLk_3().isEmpty())
        {
        %>
        <option value="">Select 3<sup>rd</sup> language Accuracy</option>   
        <option value="<%= P.getLkv_3() %>" selected><%= P.getLkv_3() %></option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 3<sup>rd</sup> language Accuracy</option>   
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%    
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="lk_4">Language 4</label>
      </div>
      <div class="col-75">
       <input type="text" name="lk_4" id="lk_4" placeholder="Not compulsary to fill all" value="<%= P.getLk_4() %>" autocomplete="off" spellcheck="true" onfocus="selectlk4()" onkeyup="hidelk4()">
       <select id="lkv_4" name="lkv_4">
        <%
        if(!P.getLk_4().isEmpty())
        {
        %>
        <option value="">Select 4<sup>th</sup> language Accuracy</option>
        <option value="<%= P.getLkv_4() %>" selected><%= P.getLkv_4() %></option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 4<sup>th</sup> language Accuracy</option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%    
        }
        %>
       </select>
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="lk_5">Language 5</label>
      </div>
      <div class="col-75">
       <input type="text" name="lk_5" id="lk_5" placeholder="Not compulsary to fill all" value="<%= P.getLk_5() %>" autocomplete="off" spellcheck="true" onfocus="selectlk5()" onkeyup="hidelk5()">
       <select id="lkv_5" name="lkv_5">
        <%
        if(!P.getLk_5().isEmpty())
        {
        %>
        <option value="">Select 5<sup>th</sup> language Accuracy</option>
        <option value="<%= P.getLkv_5() %>" selected><%= P.getLkv_5() %></option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
        <%
        }
        else
        {
        %>
        <option value="">Select 5<sup>th</sup> language Accuracy</option>
        <option value="Read, Write, Speak">Read, Write, Speak</option>
        <option value="Read, Write">Read, Write</option>
        <option value="Read, Speak">Read, Speak</option>
        <option value="Write, Speak">Write, Speak</option>
        <option value="Read">Read</option>
        <option value="Write">Write</option>
        <option value="Speak">Speak</option>
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
    function selectlk1() 
    {
      var inputlk1 = document.getElementById("lk_1");
      inputlk1.focus();
      inputlk1.select();
    }
    function selectlk2()
    {
      var inputlk2 = document.getElementById("lk_2");
      inputlk2.focus();
      inputlk2.select();
    }
    function selectlk3() 
    {
      var inputlk3 = document.getElementById("lk_3");
      inputlk3.focus();
      inputlk3.select();
    }
    function selectlk4() 
    {
      var inputlk4 = document.getElementById("lk_4");
      inputlk4.focus();
      inputlk4.select();
    }
    function selectlk5() 
    {
      var inputlk5 = document.getElementById("lk_5");
      inputlk5.focus();
      inputlk5.select();
    }
    var Inputlk1 = document.getElementById("lk_1").value;
    if(Inputlk1=="")
    {
        document.getElementById("lkv_1").disabled = true;
    }
    else
    {
        document.getElementById("lkv_1").disabled = false;
    }
    var Inputlk2 = document.getElementById("lk_2").value;
    if(Inputlk2=="")
    {
        document.getElementById("lkv_2").disabled = true;
    }
    else
    {
        document.getElementById("lkv_2").disabled = false;
    }
    var Inputlk3 = document.getElementById("lk_3").value;
    if(Inputlk3=="")
    {
        document.getElementById("lkv_3").disabled = true;
    }
    else
    {
        document.getElementById("lkv_3").disabled = false;
    }
    var Inputlk4 = document.getElementById("lk_4").value;
    if(Inputlk4=="")
    {
        document.getElementById("lkv_4").disabled = true;
    }
    else
    {
        document.getElementById("lkv_4").disabled = false;
    }
    var Inputlk5 = document.getElementById("lk_5").value;
    if(Inputlk5=="")
    {
        document.getElementById("lkv_5").disabled = true;
    }
    else
    {
        document.getElementById("lkv_5").disabled = false;
    }
    function hidelk1() 
    {
      var Inputlk1 = document.getElementById("lk_1").value;
      if(Inputlk1=="")
      {
        document.getElementById("lkv_1").value = "";
        document.getElementById("lkv_1").disabled = true;
      }
      else
      {
          document.getElementById("lkv_1").disabled = false;
          document.getElementById("lkv_1").required = true;
      }
    }
    function hidelk2() 
    {
      var Inputlk2 = document.getElementById("lk_2").value;
      if(Inputlk2=="")
      {
        document.getElementById("lkv_2").value = "";
        document.getElementById("lkv_2").disabled = true;
      }
      else
      {
          document.getElementById("lkv_2").disabled = false;
          document.getElementById("lkv_2").required = true;
      }
    }
    function hidelk3()
    {
      var Inputlk3 = document.getElementById("lk_3").value;
      if(Inputlk3=="")
      {
        document.getElementById("lkv_3").value = "";
        document.getElementById("lkv_3").disabled = true;
      }
      else
      {
          document.getElementById("lkv_3").disabled = false;
          document.getElementById("lkv_3").required = true;
      }
    }
    function hidelk4() 
    {
      var Inputlk4 = document.getElementById("lk_4").value;
      if(Inputlk4=="")
      {
        document.getElementById("lkv_4").value = "";
        document.getElementById("lkv_4").disabled = true;
      }
      else
      {
          document.getElementById("lkv_4").disabled = false;
          document.getElementById("lkv_4").required = true;
      }
    }
    function hidelk5() 
    {
      var Inputlk5 = document.getElementById("lk_5").value;
      if(Inputlk5=="")
      {
        document.getElementById("lkv_5").value = "";
        document.getElementById("lkv_5").disabled = true;
      }
      else
      {
          document.getElementById("lkv_5").disabled = false;
          document.getElementById("lkv_5").required = true;
      }
    }        
    </script>
    
  <form action="../../update_s_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
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
       <input type="text" name="s_1" id="s_1" placeholder="Not compulsary to fill all" value="<%= P.getS_1() %>" autocomplete="off" spellcheck="true" onfocus="selects1()" onkeyup="hides1()">
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
       <input type="text" name="s_2" id="s_2" placeholder="Not compulsary to fill all" value="<%= P.getS_2() %>" autocomplete="off" spellcheck="true" onfocus="selects2()" onkeyup="hides2()">
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
       <label for="s_3">Skill 3</label>
      </div>
      <div class="col-75">
       <input type="text" name="s_3" id="s_3" placeholder="Not compulsary to fill all" value="<%= P.getS_3() %>" autocomplete="off" spellcheck="true" onfocus="selects3()" onkeyup="hides3()">
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
       <input type="text" name="s_4" id="s_4" placeholder="Not compulsary to fill all" value="<%= P.getS_4() %>" autocomplete="off" spellcheck="true" onfocus="selects4()" onkeyup="hides4()">
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
       <input type="text" name="s_5" id="s_5" placeholder="Not compulsary to fill all" value="<%= P.getS_5() %>" autocomplete="off" spellcheck="true" onfocus="selects5()" onkeyup="hides5()">
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
       <input type="text" name="s_6" id="s_6" placeholder="Not compulsary to fill all" value="<%= P.getS_6() %>" autocomplete="off" spellcheck="true" onfocus="selects6()" onkeyup="hides6()">
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
       <input type="text" name="s_7" id="s_7" placeholder="Not compulsary to fill all" value="<%= P.getS_7() %>" autocomplete="off" spellcheck="true" onfocus="selects7()" onkeyup="hides7()">
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
       <input type="text" name="s_8" id="s_8" placeholder="Not compulsary to fill all" value="<%= P.getS_8() %>" autocomplete="off" spellcheck="true" onfocus="selects8()" onkeyup="hides8()">
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
       <input type="text" name="s_9" id="s_9" placeholder="Not compulsary to fill all" value="<%= P.getS_9() %>" autocomplete="off" spellcheck="true" onfocus="selects9()" onkeyup="hides9()">
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
       <input type="text" name="s_10" id="s_10" placeholder="Not compulsary to fill all" value="<%= P.getS_10() %>" autocomplete="off" spellcheck="true" onfocus="selects10()" onkeyup="hides10()">
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
       <input type="text" name="s_11" id="s_11" placeholder="Not compulsary to fill all" value="<%= P.getS_11() %>" autocomplete="off" spellcheck="true" onfocus="selects11()" onkeyup="hides11()">
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
       <input type="text" name="s_12" id="s_12" placeholder="Not compulsary to fill all" value="<%= P.getS_12() %>" autocomplete="off" spellcheck="true" onfocus="selects12()" onkeyup="hides12()">
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
       <input type="text" name="s_13" id="s_13" placeholder="Not compulsary to fill all" value="<%= P.getS_13() %>" autocomplete="off" spellcheck="true" onfocus="selects13()" onkeyup="hides13()">
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
       <input type="text" name="s_14" id="s_14" placeholder="Not compulsary to fill all" value="<%= P.getS_14() %>" autocomplete="off" spellcheck="true" onfocus="selects14()" onkeyup="hides14()">
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
       <input type="text" id="s_15" name="s_15" placeholder="Not compulsary to fill all" value="<%= P.getS_15() %>" autocomplete="off" spellcheck="true" onfocus="selects15()" onkeyup="hides15()">
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
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selects1() 
  {
    var inputs1 = document.getElementById("s_1");
    inputs1.focus();
    inputs1.select();
  }
  function selects2()
  {
    var inputs2 = document.getElementById("s_2");
    inputs2.focus();
    inputs2.select();
  }
  function selects3() 
  {
    var inputs3 = document.getElementById("s_3");
    inputs3.focus();
    inputs3.select();
  }
  function selects4() 
  {
    var inputs4 = document.getElementById("s_4");
    inputs4.focus();
    inputs4.select();
  }
  function selects5() 
  {
    var inputs5 = document.getElementById("s_5");
    inputs5.focus();
    inputs5.select();
  }
  function selects6() 
  {
    var inputs6 = document.getElementById("s_6");
    inputs6.focus();
    inputs6.select();
  }
  function selects7()
  {
    var inputs7 = document.getElementById("s_7");
    inputs7.focus();
    inputs7.select();
  }
  function selects8() 
  {
    var inputs8 = document.getElementById("s_8");
    inputs8.focus();
    inputs8.select();
  }
  function selects9() 
  {
    var inputs9 = document.getElementById("s_9");
    inputs9.focus();
    inputs9.select();
  }
  function selects10() 
  {
    var inputs10 = document.getElementById("s_10");
    inputs10.focus();
    inputs10.select();
  }
  function selects11() 
  {
    var inputs11 = document.getElementById("s_11");
    inputs11.focus();
    inputs11.select();
  }
  function selects12()
  {
    var inputs12 = document.getElementById("s_12");
    inputs12.focus();
    inputs12.select();
  }
  function selects13() 
  {
    var inputs13 = document.getElementById("s_13");
    inputs13.focus();
    inputs13.select();
  }
  function selects14() 
  {
    var inputs14 = document.getElementById("s_14");
    inputs14.focus();
    inputs14.select();
  }
  function selects15() 
  {
    var inputs15 = document.getElementById("s_15");
    inputs15.focus();
    inputs15.select();
  }
  var Inputs1 = document.getElementById("s_1").value;
  if(Inputs1=="")
  {
      document.getElementById("sv_1").disabled = true;
  }
  else
  {
      document.getElementById("sv_1").disabled = false;
  }
  var Inputs2 = document.getElementById("s_2").value;
  if(Inputs2=="")
  {
      document.getElementById("sv_2").disabled = true;
  }
  else
  {
      document.getElementById("sv_2").disabled = false;
  }
  var Inputs3 = document.getElementById("s_3").value;
  if(Inputs3=="")
  {
      document.getElementById("sv_3").disabled = true;
  }
  else
  {
      document.getElementById("sv_3").disabled = false;
  }
  var Inputs4 = document.getElementById("s_4").value;
  if(Inputs4=="")
  {
      document.getElementById("sv_4").disabled = true;
  }
  else
  {
      document.getElementById("sv_4").disabled = false;
  }
  var Inputs5 = document.getElementById("s_5").value;
  if(Inputs5=="")
  {
      document.getElementById("sv_5").disabled = true;
  }
  else
  {
      document.getElementById("sv_5").disabled = false;
  }
  var Inputs6 = document.getElementById("s_6").value;
  if(Inputs6=="")
  {
      document.getElementById("sv_6").disabled = true;
  }
  else
  {
      document.getElementById("sv_6").disabled = false;
  }
  var Inputs7 = document.getElementById("s_7").value;
  if(Inputs7=="")
  {
      document.getElementById("sv_7").disabled = true;
  }
  else
  {
      document.getElementById("sv_7").disabled = false;
  }
  var Inputs8 = document.getElementById("s_8").value;
  if(Inputs8=="")
  {
      document.getElementById("sv_8").disabled = true;
  }
  else
  {
      document.getElementById("sv_8").disabled = false;
  }
  var Inputs9 = document.getElementById("s_9").value;
  if(Inputs9=="")
  {
      document.getElementById("sv_9").disabled = true;
  }
  else
  {
      document.getElementById("sv_9").disabled = false;
  }
  var Inputs10 = document.getElementById("s_10").value;
  if(Inputs10=="")
  {
      document.getElementById("sv_10").disabled = true;
  }
  else
  {
      document.getElementById("sv_10").disabled = false;
  }
  var Inputs11 = document.getElementById("s_11").value;
  if(Inputs11=="")
  {
      document.getElementById("sv_11").disabled = true;
  }
  else
  {
      document.getElementById("sv_11").disabled = false;
  }
  var Inputs12 = document.getElementById("s_12").value;
  if(Inputs12=="")
  {
      document.getElementById("sv_12").disabled = true;
  }
  else
  {
      document.getElementById("sv_12").disabled = false;
  }
  var Inputs13 = document.getElementById("s_13").value;
  if(Inputs13=="")
  {
      document.getElementById("sv_13").disabled = true;
  }
  else
  {
      document.getElementById("sv_13").disabled = false;
  }
  var Inputs14 = document.getElementById("s_14").value;
  if(Inputs14=="")
  {
      document.getElementById("sv_14").disabled = true;
  }
  else
  {
      document.getElementById("sv_14").disabled = false;
  }
  var Inputs15 = document.getElementById("s_15").value;
  if(Inputs15=="")
  {
      document.getElementById("sv_15").disabled = true;
  }
  else
  {
      document.getElementById("sv_15").disabled = false;
  }
  function hides1() 
  {
    var Inputs1 = document.getElementById("s_1").value;
    if(Inputs1=="")
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
  function hides2() 
  {
    var Inputs2 = document.getElementById("s_2").value;
    if(Inputs2=="")
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
  function hides3()
  {
    var Inputs3 = document.getElementById("s_3").value;
    if(Inputs3=="")
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
  function hides4() 
  {
    var Inputs4 = document.getElementById("s_4").value;
    if(Inputs4=="")
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
  function hides5() 
  {
    var Inputs5 = document.getElementById("s_5").value;
    if(Inputs5=="")
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
  function hides6() 
  {
    var Inputs6 = document.getElementById("s_6").value;
    if(Inputs6=="")
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
  function hides7() 
  {
    var Inputs7 = document.getElementById("s_7").value;
    if(Inputs7=="")
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
  function hides8()
  {
    var Inputs8 = document.getElementById("s_8").value;
    if(Inputs8=="")
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
  function hides9() 
  {
    var Inputs9 = document.getElementById("s_9").value;
    if(Inputs9=="")
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
  function hides10() 
  {
    var Inputs10 = document.getElementById("s_10").value;
    if(Inputs10=="")
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
  function hides11() 
  {
    var Inputs11 = document.getElementById("s_11").value;
    if(Inputs11=="")
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
  function hides12() 
  {
    var Inputs12 = document.getElementById("s_12").value;
    if(Inputs12=="")
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
  function hides13()
  {
    var Inputs13 = document.getElementById("s_13").value;
    if(Inputs13=="")
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
  function hides14() 
  {
    var Inputs14 = document.getElementById("s_14").value;
    if(Inputs14=="")
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
  function hides15() 
  {
    var Inputs15 = document.getElementById("s_15").value;
    if(Inputs15=="")
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
      
  <form action="../../update_ba_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Behaviour & Attitude</b></h3>
    <p>Share your strength / capability / behaviour / attitude / weakness / temper etc.:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="ba_1">Behaviour / Attitude 1</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_1" placeholder="Not compulsary to fill all" value="<%= P.getBa_1() %>" id="ba1" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ba_2">Behaviour / Attitude 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_2" placeholder="Not compulsary to fill all" value="<%= P.getBa_2() %>" id="ba2" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ba_3">Behaviour / Attitude 3</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_3" placeholder="Not compulsary to fill all" value="<%= P.getBa_3() %>" id="ba3" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ba_4">Behaviour / Attitude 4</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_4" placeholder="Not compulsary to fill all" value="<%= P.getBa_4() %>" id="ba4" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba4()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ba_5">Behaviour / Attitude 5</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_5" placeholder="Not compulsary to fill all" value="<%= P.getBa_5() %>" id="ba5" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba5()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ba_6">Behaviour / Attitude 6</label>
      </div>
      <div class="col-75">
       <input type="text" name="ba_6" placeholder="Not compulsary to fill all" value="<%= P.getBa_6() %>" id="ba6" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectba6()">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectba1() 
  {
    var inputba1 = document.getElementById("ba1");
    inputba1.focus();
    inputba1.select();
  }
  function selectba2()
  {
    var inputba2 = document.getElementById("ba2");
    inputba2.focus();
    inputba2.select();
  }
  function selectba3() 
  {
    var inputba3 = document.getElementById("ba3");
    inputba3.focus();
    inputba3.select();
  }
  function selectba4() 
  {
    var inputba4 = document.getElementById("ba4");
    inputba4.focus();
    inputba4.select();
  }
  function selectba5() 
  {
    var inputba5 = document.getElementById("ba5");
    inputba5.focus();
    inputba5.select();
  }
  function selectba6() 
  {
    var inputba6 = document.getElementById("ba6");
    inputba6.focus();
    inputba6.select();
  }
  </script>
  <form action="../../update_ih_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Interest & Hobby</b></h3>
    <p>Share your hobby / interest / passion / enthusiasm etc.:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="ih_1">Interest / Hobby 1</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_1" placeholder="Not compulsary to fill all" value="<%= P.getIh_1() %>" id="ih1" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
	<label for="ih_2">Interest / Hobby 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_2" placeholder="Not compulsary to fill all" value="<%= P.getIh_2() %>" id="ih2" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ih_3">Interest / Hobby 3</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_3" placeholder="Not compulsary to fill all" value="<%= P.getIh_3() %>" id="ih3" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ih_4">Interest / Hobby 4</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_4" placeholder="Not compulsary to fill all" value="<%= P.getIh_4() %>" id="ih4" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih4()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ih_5">Interest / Hobby 5</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_5" placeholder="Not compulsary to fill all" value="<%= P.getIh_5() %>" id="ih5" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih5()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="ih_6">Interest / Hobby 6</label>
      </div>
      <div class="col-75">
       <input type="text" name="ih_6" placeholder="Not compulsary to fill all" value="<%= P.getIh_6() %>" id="ih6" spellcheck="true" autocomplete="off" spellcheck="true" onfocus="selectih6()">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectih1() 
  {
    var inputih1 = document.getElementById("ih1");
    inputih1.focus();
    inputih1.select();
  }
  function selectih2()
  {
    var inputih2 = document.getElementById("ih2");
    inputih2.focus();
    inputih2.select();
  }
  function selectih3() 
  {
    var inputih3 = document.getElementById("ih3");
    inputih3.focus();
    inputih3.select();
  }
  function selectih4() 
  {
    var inputih4 = document.getElementById("ih4");
    inputih4.focus();
    inputih4.select();
  }
  function selectih5() 
  {
    var inputih5 = document.getElementById("ih5");
    inputih5.focus();
    inputih5.select();
  }
  function selectih6() 
  {
    var inputih6 = document.getElementById("ih6");
    inputih6.focus();
    inputih6.select();
  }
  </script>
  
  <form action="../../update_obj_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color:black;">
    <h3><b>Career Abstract / Objective</b></h3>
    <p>Short statement that defines the position you're seeking:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="objective">Objective</label>
      </div>
      <div class="col-75">
       <textarea name="objective" id="objective" style="height:200px" required autofocus="on" spellcheck="true" onfocus="selectobj()"><%= P.getObjective() %></textarea>
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectobj() 
  {
    var inputobj = document.getElementById("objective");
    inputobj.focus();
    inputobj.select();
  }
  </script>
    
  <form action="../../update_edu_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
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
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
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
    
  <form action="../../update_cert_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Certificate</b></h3>
    <p>Mention certificate & others report:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="certificate_1">Certificate 1</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_1" id="certificate_1" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_1() %>" onfocus="selectcert1()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <div class="row" id="certdiv2">
      <div class="col-25">
       <label for="certificate_2">Certificate 2</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_2" id="certificate_2" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_2() %>" onfocus="selectcert2()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <div class="row" id="certdiv3">
      <div class="col-25">
       <label for="certificate_3">Certificate 3</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_3" id="certificate_3" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_3() %>" onfocus="selectcert3()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <div class="row" id="certdiv4">
      <div class="col-25">
       <label for="certificate_4">Certificate 4</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_4" id="certificate_4" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_4() %>" onfocus="selectcert4()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <div class="row" id="certdiv5">
      <div class="col-25">
       <label for="certificate_5">Certificate 5</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_5" id="certificate_5" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_5() %>" onfocus="selectcert5()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <div class="row" id="certdiv6">
      <div class="col-25">
       <label for="certificate_6">Certificate 6</label>
      </div>
      <div class="col-75">
       <input type="text" name="certificate_6" id="certificate_6" placeholder="Not compulsary to fill all" value="<%= P.getCertificate_6() %>" onfocus="selectcert6()" autocomplete="off" spellcheck="true">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectcert1() 
  {
    var cert1 = document.getElementById("certificate_1");
    cert1.focus();
    cert1.select();
  }
  function selectcert2()
  {
    var cert2 = document.getElementById("certificate_2");
    cert2.focus();
    cert2.select();
  }
  function selectcert3() 
  {
    var cert3 = document.getElementById("certificate_3");
    cert3.focus();
    cert3.select();
  }
  function selectcert4() 
  {
    var cert4 = document.getElementById("certificate_4");
    cert4.focus();
    cert4.select();
  }
  function selectcert5() 
  {
    var cert5 = document.getElementById("certificate_5");
    cert5.focus();
    cert5.select();
  }
  function selectcert6() 
  {
    var cert6 = document.getElementById("certificate_6");
    cert6.focus();
    cert6.select();
  }
  </script>

  <form action="../../update_work_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
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
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
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
  function hidew1()
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
  function hidew2()
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
  function hidew3()
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
  function hidew4()
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
  function hidew5()
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
  function hidew6()
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
  function hidew7()
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
    
  <form action="../../update_sml_detail" method="POST">
   <input type="hidden" name="mobile" value="<%= P.getMobile() %>">
   <div class="container">
    <hr style="background-color: black;">
    <h3><b>Social Media Platform</b></h3>
    <p>Share your identity to find out easily:</p>
    <div class="row-12">
     <div class="row">
      <div class="col-25">
       <label for="linkedin">LinkedIn Link</label>
      </div>
      <div class="col-75">
       <input type="url" name="linkedin" id="link_1" placeholder="eg. www.linkedin.com/username" value="<%= P.getLinkedin() %>" autocomplete="off" onfocus="selectText1()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="twitter">Twitter Link</label>
      </div>
      <div class="col-75">
       <input type="url" name="twitter" id="link_2" placeholder="eg. www.twitter.com/username" value="<%= P.getTwitter() %>" autocomplete="off" onfocus="selectText2()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="facebook">Facebook Link</label>
      </div>
      <div class="col-75">
       <input type="url" name="facebook" id="link_3" placeholder="eg. www.facebook.com/username" value="<%= P.getFacebook() %>" autocomplete="off" onfocus="selectText3()">
      </div>
     </div>
     <div class="row">
      <div class="col-25">
       <label for="instagram">Instagram Link</label>
      </div>
      <div class="col-75">
       <input type="url" name="instagram" id="link_4" placeholder="eg. www.instagram.com/username" value="<%= P.getInstagram() %>" autocomplete="off" onfocus="selectText4()">
      </div>
     </div>
     <input type="submit" value="Update">
     <br><br><br>
     <a class="nav-link" href="../../menu?mobile=<%= P.getMobile() %>" style="cursor:pointer;width:50px;"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
    </div>
   </div> 
  </form>
  <script>
  function selectText1() 
  {
    var input1 = document.getElementById("link_1");
    input1.focus();
    input1.select();
  }
  function selectText2()
  {
    var input2 = document.getElementById("link_2");
    input2.focus();
    input2.select();
  }
  function selectText3() 
  {
    var input3 = document.getElementById("link_3");
    input3.focus();
    input3.select();
  }
  function selectText4() 
  {
    var input4 = document.getElementById("link_4");
    input4.focus();
    input4.select();
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
   bottom: -10px;
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