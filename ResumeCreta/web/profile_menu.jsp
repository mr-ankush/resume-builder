<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="dao.ProfileDAO"%>
<%@page import="model.Profile"%>
<%@page import="dao.QRcodeDAO"%>
<%@page import="model.Qr"%>
<%
ProfileDAO pd = new ProfileDAO();
Profile P;
String mobile;
mobile = session.getAttribute("mobile").toString();
P = pd.searchprofiledatabymobile(mobile);
QRcodeDAO qd = new QRcodeDAO();
Qr Q;
Q = qd.searchQr_record(mobile);
%>
<!DOCTYPE html>
<html>
 <head>
  <title>Profile Menu - RESUME CRETA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
  <link rel="stylesheet" href="http://localhost:8084/ResumeCreta/css/loading.gif">
  <script src="http://localhost:8084/ResumeCreta/js/live.js"></script>
  <script src="http://localhost:8084/ResumeCreta/js/connection.js"></script>
  <script src="js/index.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript">function googleTranslateElementInit(){new google.translate.TranslateElement({pageLanguage: 'en',layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');}</script>
  <script type="text/javascript" >
  (function(){var gtConstEvalStartTime = new Date();function d(b){var a=document.getElementsByTagName("head")[0];a||(a=document.body.parentNode.appendChild(document.createElement("head")));a.appendChild(b)}function _loadJs(b){var a=document.createElement("script");a.type="text/javascript";a.charset="UTF-8";a.src=b;d(a)}function _loadCss(b){var a=document.createElement("link");a.type="text/css";a.rel="stylesheet";a.charset="UTF-8";a.href=b;d(a)}function _isNS(b){b=b.split(".");for(var a=window,c=0;c<b.length;++c)if(!(a=a[b[c]]))return!1;return!0}
  function _setupNS(b){b=b.split(".");for(var a=window,c=0;c<b.length;++c)a.hasOwnProperty?a.hasOwnProperty(b[c])?a=a[b[c]]:a=a[b[c]]={}:a=a[b[c]]||(a[b[c]]={});return a}window.addEventListener&&"undefined"==typeof document.readyState&&window.addEventListener("DOMContentLoaded",function(){document.readyState="complete"},!1);
  if (_isNS('google.translate.Element')){return}(function(){var c=_setupNS('google.translate._const');c._cest = gtConstEvalStartTime;gtConstEvalStartTime = undefined;c._cl='en';c._cuc='googleTranslateElementInit';c._cac='';c._cam='';c._ctkk=eval('((function(){var a\x3d989839371;var b\x3d3078371007;return 422201+\x27.\x27+(a+b)})())');var h='translate.googleapis.com';var s=(true?'https':window.location.protocol=='https:'?'https':'http')+'://';var b=s+h;c._pah=h;c._pas=s;c._pbi=b+'/translate_static/img/te_bk.gif';c._pci=b+'/translate_static/img/te_ctrl3.gif';c._pli=b+'/translate_static/img/loading.gif';c._plla=h+'/translate_a/l';c._pmi=b+'/translate_static/img/mini_google.png';c._ps=b+'/translate_static/css/translateelement.css';c._puh='translate.google.com';_loadCss(c._ps);_loadJs(b+'/translate_static/js/element/main.js');})();})();
  </script>
  <style>
   body
   {
    font-family: Arial, Helvetica, sans-serif;
   }
   .sticky 
   {
   position: fixed;
   top: 0;
   width: 100%;
   }
   #navbar12,*
   {
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
   }
   /* login */
   /* Full-width input fields */
   input[type=text], input[type=password] 
   {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
   }
   /* Set a style for all buttons */
   button
   {
    //background-color: #6ca0dc;
    //color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 70px;
    height: 70px;
   }
   button:hover 
   {
    opacity: 0.7;
   }
   /* Extra styles for the cancel button */
   .cancelbtn
   {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
   }
   /* Center the image and position the close button */
   .imgcontainer 
   {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
   }
   img.avatar
   {
    width: 40%;
    border-radius: 50%;
   }
   .container 
   {
    padding: 16px;
   }
   span.psw 
   {
    float: right;
    padding-top: 16px;
   }
   /* The Modal (background) */
   .modal 
   {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
   }
   /* Modal Content/Box */
   .modal-content 
   {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
   }
   /* The Close Button (x) */
   .close 
   {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
   }
   .close:hover, .close:focus 
   {
    color: red;
    cursor: pointer;
   }
   /* Add Zoom Animation */
   /*
   .animate 
   {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
   }
   @-webkit-keyframes animatezoom 
   {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
   }
   @keyframes animatezoom 
   {
    from {transform: scale(0)} 
    to {transform: scale(1)}
   }
   */
   /* Change styles for span and cancel button on extra small screens */
   @media screen and (max-width: 300px) 
   {
    span.psw 
    {
     display: block;
     float: none;
    }
    .cancelbtn 
    {
     width: 100%;
    }
   }
  .btns 
  {
   background-color: DodgerBlue;
   border: none;
   color: white;
   padding: 12px 16px;
   font-size: 16px;
   cursor: pointer;
  }
  /* Darker background on mouse-over */
  .btns:hover 
  {
   background-color: RoyalBlue;
   color:black;
  }
  </style>
 </head>
 <body class="w3-light-grey" onoffline="lost()" ononline="load()" id="body">
   <nav id="navbar" class="navbar navbar-expand-md navbar-dark bg-dark">
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
      <li><a id="google_translate_element"></a></li>
      <li class="nav-item"> <a class="nav-link text-primary" href="../../signout" style="cursor:pointer;">Log-Out !</a> </li>
     </ul>
     </div>
    </div>
  </nav>
     
  <div class="w3-center w3-margin">
   <!-- Update CV -->
   <a href="../../resume_update?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Update CV">
     <i id="shake" class="fa fa-pencil-square-o w3-xxlarge"></i>
    </button>
   </a>
   <!-- Update photo -->
   <a href="../../resume_photo_update?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <%if(P.getPhoto()==null)
    {%>
    <button class="btns w3-card-4" title="Upload Image">
       <i id="shake" class="fa fa-camera-retro w3-xxlarge"></i>
    </button>
    <%}else
    {%>
    <button class="btns w3-card-4" title="Update Image">
       <i id="shake" class="fa fa-camera w3-xxlarge"></i>
    </button>
    <%}%>
   </a>
   <!-- CV visibility -->
   <%if(P.getVisibility().equalsIgnoreCase("Show"))
   {%>
   <a href="../../resume_hide?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Hide CV">
       <i id="shake" class="fa fa-eye-slash w3-xxlarge w3"></i>
    </button>
   </a>
   <%}else
   {%>
   <a href="../../resume_visible?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Visible CV">
       <i id="shake" class="fa fa-eye w3-xxlarge w3"></i>
    </button>
   </a>
   <%}%>
   <!-- URL -->
   <%
   if(P.getVisibility().equalsIgnoreCase("Show"))
   {%>
    <button class="btns w3-card-4" title="First hide CV" style="text-decoration:none;cursor: no-drop;" onclick="if(confirm('Turn off visibility of CV first.\nDo you want to hide profile.')){window.location.href='../../resume_hide?mobile=<%= P.getMobile() %>'}">
     <i id="shake" class="fa fa-link w3-xxlarge"></i>
     <span class="badge badge-danger">NEW</span>
    </button>
   <%}
   else
   {
    if(P.getUsername()==null || P.getUsername().isEmpty())
    {%>
    <a href="../../link_open?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
     <button class="btns w3-card-4" title="Generate/Activate URL">
        <i id="shake" class="fa fa-link w3-xxlarge"></i>
        <span class="badge badge-danger">NEW</span>
     </button>
    </a>
    <%}else
    {%>
    <a href="../../link_close?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
     <button class="btns w3-card-4" title="Deactivate URL">
        <i id="shake" class="fa fa-chain-broken w3-xxlarge"></i>
     </button>
    </a>
    <%}
   }
   %>
   <!-- QR code -->
   <%
   if(Q.getQr_status().equals("deactivate"))
   {%>
    <a href="../../qr_linkopen?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
     <button class="btns w3-card-4" title="Generate QR code">
        <i id="shake" class="fa fa-qrcode w3-xxlarge"></i>
        <span class="badge badge-danger">NEW</span>
     </button>
    </a>
   <%}
   else
   {
   %>
    <a href="../../qr_linkopen?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
     <button class="btns w3-card-4" title="Update QR code">
        <i id="shake" class="fa fa-qrcode w3-xxlarge"></i>
     </button>
    </a>
   <%
   }
   %>
   <!-- password -->
   <a href="../../updatepassword?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Update Password">
       <i id="shake" class="fa fa-key w3-xxlarge"></i>
    </button>
   </a>
   <!-- setting -->
   <a href="../../setting?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Change Setting">
       <i id="shake" class="fa fa-wrench w3-xxlarge"></i>
    </button>
   </a>
   <!-- delete -->
   <a href="../../resume_delete?mobile=<%= P.getMobile() %>" style="text-decoration:none;">
    <button class="btns w3-card-4" title="Delete Account">
       <i id="shake" class="fa fa-trash w3-xxlarge"></i>
    </button>
   </a>
  </div>
    <style>
    #shake
    {
      animation: shake 25s;
      animation-iteration-count: infinite;
    }

    @keyframes shake {
      0% { transform: translate(1px, 1px) rotate(0deg); }
      10% { transform: translate(-1px, -2px) rotate(-2deg); }
      20% { transform: translate(-3px, 0px) rotate(2deg); }
      30% { transform: translate(3px, 2px) rotate(0deg); }
      40% { transform: translate(1px, -1px) rotate(2deg); }
      50% { transform: translate(-1px, 2px) rotate(-2deg); }
      60% { transform: translate(-3px, 1px) rotate(0deg); }
      70% { transform: translate(3px, 1px) rotate(-2deg); }
      80% { transform: translate(-1px, -1px) rotate(2deg); }
      90% { transform: translate(1px, 2px) rotate(0deg); }
      100% { transform: translate(1px, -2px) rotate(-2deg); }
    }
    </style>
  <%
   String Msg;
   Msg = session.getAttribute("msg").toString();
  %>
  <div class="container" style="margin-bottom:-30px;margin-top:0px;">
   <div class="alert alert-danger text-center">
    <a href="#" class="close" data-dismiss="alert" aria-label="close" style="color:black">&times;</a>
    <strong><%= Msg %></strong> 
   </div>
  </div>
  <div class="">
   <div class="container">
    <div class="row">
     <div class="col-md-8">
    <%
    if(P.getVisibility().equalsIgnoreCase("Show"))
    {
    %>
    <div class="badge alert-warning" style="cursor: pointer;" href="#resume">
     <h6>&nbsp;&nbsp;<b>Preview of Resume/CV</b> (updated on <%= P.getCv_updatedate() %>)</h6> 
    </div>
    <%
    }
    else
    {
    %>
    <div class="badge alert-danger" style="cursor: pointer;" href="#resume">
     <h6>&nbsp;&nbsp;<b>Resume profile is Hide</b> (hide from <%= P.getV_date() %>)</h6> 
    </div>
    <%
    }
    %>
     </div>
     <div class="col-md-4">
       <form class="form-inline" action="../../profile" method="GET" target="_blank">
       <div class="input-group">
        <big>Search Resume Id : </big>
        <input type="search" name="cv" target="_blank" class="form-control w-75" id="inlineFormInputGroup" placeholder="Enter mobile number." maxlength="10" title="Enter valid resume id." pattern="[6-9]{1}[0-9]{9}" autocomplete="on" required>
        <div class="input-group-append" style="padding-top: 0px">
         <input class="btn btn-secondary" type="submit" value="Search">
        </div>
       </div>
      </form>
     </div>
    </div>
   </div>
  </div>
  <!-- profile menu -->
  <!-- Page Container -->
  <div class="w3-content w3-margin-top" style="max-width:1400px;">
   <!-- The Grid -->
   <div class="w3-row-padding">
    <!-- Left Column -->
    <div class="w3-third">
     <div class="w3-white w3-text-grey w3-card-4">
      <div class="w3-container">
       <h2 style="color:black;"><i class="fa fa-paperclip"></i> <%= P.getCv_type() %>
        <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=cv_detail" style="text-decoration:none;" title="Update CV Theme">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
        </a>
       </h2>
      </div>
      <div class="w3-display-container w3-card">
       <%
       if(P.getPhoto()!=null)
       {
       %>   
       <img src="http://localhost:8084/ResumeCreta/image/<%= P.getMobile() %>-<%= P.getFirstname() %>.png" style="width:100%"/>
       <div class="w3-display-topright w3-container w3-margin-top w3-opacity-min">
        <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=photo_detail" style="text-decoration:none;" title="Update CV Photo">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-camera-retro w3-padding w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
        </a>
       </div>
       <%
       }
       else
       {
       %> 
       <img src="http://localhost:8084/ResumeCreta/images/<%= P.getGender() %>.png" alt="image" style="width:100%"/>
       <div class="w3-display-bottomright w3-container w3-margin">
        
        <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=photo_detail" style="text-decoration:none;" title="Update CV Photo">
         <span class="w3-right w3-hover-text-black" style="cursor:pointer;"><i class="fa fa-camera-retro w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
        </a>
       </div>
       <%
       }
       %>
       
       <div class="w3-display-bottomleft w3-container w3-text-black">
         <%
         int year, month, day;
         year = Integer.parseInt(P.getDob_year());
         month = Integer.parseInt(P.getDob_month());
         day = Integer.parseInt(P.getDob_date());
         LocalDate l = LocalDate.of(year, month, day);
         LocalDate now = LocalDate.now();
         Period diff = Period.between(l,now);
         if(P.getGender().equalsIgnoreCase("Male"))
         {
          out.println("<h2 style='background-color: whitesmoke' title='Male - "+diff.getYears()+"years "+diff.getMonths()+"months "+diff.getDays()+"days old'>");
          out.println("&nbsp;<i class='fa fa-male'></i>");
          out.println(P.getFirstname()+" "+P.getLastname()+"&nbsp;");
         }
         else
         {
          out.println("<h2 style='background-color: whitesmoke'>");
          out.println("&nbsp;<i class='fa fa-female'></i>");
          out.println(P.getFirstname()+" "+P.getLastname()+"&nbsp;");
         }
         %>
        </h2>
       </div>
      </div>
      <br>
      <div class="w3-container">
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=pd_detail" style="text-decoration:none;" title="Update Contact Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p><i class="fa fa-suitcase fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><%= P.getCv_designation() %></p>
       <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><%= P.getLa_city() %>, <%= P.getLa_state() %>, <%= P.getLa_country() %>&nbsp;<a href="https://www.google.com/maps/place/<%= P.getLa_city() %>" target="_blank" style="cursor:pointer;color:black;">(search on map)</a></p>
       <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="mailto:<%= P.getEmail() %>"><%= P.getEmail() %></a></p>
       <p><i class="fa fa-phone-square fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="tel:<%= P.getIsd() %><%= P.getMobile() %>">(<%= P.getIsd() %>) <%= P.getMobile() %></a></p>
       <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="tel:<%= P.getIsd() %><%= P.getAltmobile() %>">(<%= P.getIsd() %>) <%= P.getAltmobile() %></a> (alternate)</p>
       <p><i class="fa fa-whatsapp fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="https://wa.me/<%= P.getIsd() %><%= P.getMobile() %>" target="_blank">Chat on whatsapp</a></p>
       <hr>
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=pd_detail" style="text-decoration:none;" title="Update Contact Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p class="w3-large"><b><i class="fa fa-group fa-fw w3-margin-right w3-text-<%= P.getCv_theme() %>"></i>Personal Detail</b></p>
       <p>
        <i class="fa fa-tags fa-fw w3-margin-right w3-large w3-text-gray"></i>
        <span style="color:black">Birth Date</span>
        <br><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i>
        <%= P.getDob_date() %>-<%= P.getDob_month() %>-<%= P.getDob_year() %>&nbsp;&nbsp;(Age : <%=diff.getYears()%> years <%=diff.getMonths()%> months <%=diff.getDays()%> days)
       </p>
       <p>
        <i class="fa fa-tags fa-fw w3-margin-right w3-large w3-text-gray"></i>
        <span style="color:black">Father's Name</span>
        <br><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i>
        <%= P.getF_name() %>
       </p>
       <p>
        <i class="fa fa-tags fa-fw w3-margin-right w3-large w3-text-gray"></i>
        <span style="color:black">Mother's Name</span>
        <br><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i>
        <%= P.getM_name() %>
       </p>
       <p>
        <i class="fa fa-tags fa-fw w3-margin-right w3-large w3-text-gray"></i>
        <span style="color:black">Permanent Address</span>
        <br><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i>
        <%= P.getPermanentadd() %>
       </p>
       <p>
        <i class="fa fa-tags fa-fw w3-margin-right w3-large w3-text-gray"></i>
        <span style="color:black">Nationality</span>
        <br><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i>
        <%= P.getNationality() %>
       </p>
       <hr>
       <!-- Language -->
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=lk_detail" style="text-decoration:none;" title="Update Language Known Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-<%= P.getCv_theme() %>"></i>Languages</b></p> 
       <%
       if(!P.getLk_1().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:100%">
            <div class="w3-center w3-text-white"><big><%= P.getLkv_1() %></big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getLk_1() %></p>
       <%
       }
       if(!P.getLk_2().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:100%">
         <div class="w3-center w3-text-white"><big><%= P.getLkv_2() %></big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getLk_2() %></p>
       <%
       }
       if(!P.getLk_3().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:100%">
         <div class="w3-center w3-text-white"><big><%= P.getLkv_3() %></big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getLk_3() %></p>
       <%
       }
       if(!P.getLk_4().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:100%">
         <div class="w3-center w3-text-white"><big><%= P.getLkv_4() %></big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getLk_4() %></p>
       <%
       }
       if(!P.getLk_5().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:100%">
         <div class="w3-center w3-text-white"><big><%= P.getLkv_5() %></big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getLk_5() %></p>
       <%
       }
       %>
       <hr>
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=s_detail" style="text-decoration:none;" title="Update Skills Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p class="w3-large w3-text-theme"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-<%= P.getCv_theme() %>"></i>Skills</b></p>
       <%
       if(!P.getS_1().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_1() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_1() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_1() %></p>
       <%
       }
       if(!P.getS_2().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_2() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_2() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_2() %></p>
       <%
       }
       if(!P.getS_3().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_3() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_3() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_3() %></p>
       <%
       }
       if(!P.getS_4().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
         <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_4() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_4() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_4() %></p>
       <%
       }
       if(!P.getS_5().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_5() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_5() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_5() %></p>
       <%
       }
       if(!P.getS_6().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_6() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_6() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_6() %></p>
       <%
       }
       if(!P.getS_7().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_7() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_7() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_7() %></p>
       <%
       }
       if(!P.getS_8().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_8() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_8() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_8() %></p>
       <%
       }
       if(!P.getS_9().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_9() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_9() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_9() %></p>
       <%
       }
       if(!P.getS_10().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_10() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_10() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_10() %></p>
       <%
       }
       if(!P.getS_11().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_11() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_11() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_11() %></p>
       <%
       }
       if(!P.getS_12().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_12() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_12() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_12() %></p>
       <%
       }
       if(!P.getS_13().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_13() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_13() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_13() %></p>
       <%
       }
       if(!P.getS_14().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_14() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_14() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_14() %></p>
       <%
       }
       if(!P.getS_15().isEmpty())
       {
       %>
       <div class="w3-light-grey w3-round-xlarge w3-small">
        <div class="w3-container w3-center w3-round-xlarge w3-<%= P.getCv_theme() %>" style="width:<%= P.getSv_15() %>%">
         <div class="w3-center w3-text-white"><big><%= P.getSv_15() %>%</big></div>
        </div>
       </div>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-small w3-text-gray w3-margin-left"></i><%= P.getS_15() %></p>
       <%
       }
       %>
       <hr>
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=ba_detail" style="text-decoration:none;" title="Update Attitude Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p class="w3-large w3-text-theme"><b><i class="fa fa-snowflake-o fa-fw w3-margin-right w3-text-<%= P.getCv_theme() %>"></i>Behaviour & Attitude</b></p>
       <%
       if(P.getBa_1().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_1() %></p>
       <%
       }
       if(P.getBa_2().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_2() %></p>
       <%
       }
       if(P.getBa_3().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_3() %></p>
       <%
       }
       if(P.getBa_4().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_4() %></p>
       <%
       }
       if(P.getBa_5().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_5() %></p>
       <%
       }
       if(P.getBa_6().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getBa_6() %></p>
       <%
       }
       %>
       <hr>
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=ih_detail" style="text-decoration:none;" title="Update Hobby Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
       <p class="w3-large w3-text-theme"><b><i class="fa fa-trophy fa-fw w3-margin-right w3-text-<%= P.getCv_theme() %>"></i>Interest & Hobby</b></p>
       <%
       if(P.getIh_1().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_1() %></p>
       <%
       }
       if(P.getIh_2().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_2() %></p>
       <%
       }
       if(P.getIh_3().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_3() %></p>
       <%
       }
       if(P.getIh_4().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_4() %></p>
       <%
       }
       if(P.getIh_5().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_5() %></p>
       <%
       }
       if(P.getIh_6().length()>1)
       {
       %>
       <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-gray"></i><%= P.getIh_6() %></p>
       <%
       }
       %>
      </div>
     </div>
     <br>
    <!-- End Left Column -->
    </div>
    <!-- Right Column -->
    <div class="w3-twothird">
     <!-- Objective -->
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16">
       <i class="fa fa-rocket fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Career Abstract
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=obj_detail" style="text-decoration:none;" title="Update Objective">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
      </h2>
      <div class="w3-container w3-justify">
       <p><i class="fa fa-quote-left fa-fw w3-margin-right w3-margin-left w3-xxlarge w3-text-gray"></i><big><%= P.getObjective() %></big></p>
       <hr>
      </div>
     </div>
     <!-- Education -->  
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16">
       <i class="fa fa-graduation-cap fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Education
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=edu_detail" style="text-decoration:none;" title="Update Educational Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
      </h2>
      <%
      if(P.getDegree_1().length()>3)
      {
      %>
      <div class="w3-container">
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_1() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_1() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_1() %></b></h6>
       <p>
        <h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_1()%>, Affiliated with <%= P.getAffiliate_1() %></h4>
       </p>
      </div>
      <%
      }
      if(P.getDegree_2().length()>3)
      {
      %>
      <div class="w3-container">
       <hr>
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_2() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_2() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_2() %></b></h6>
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_2()%>, Affiliated with <%= P.getAffiliate_2() %></h4></p>
      </div>
      <%
      }
      if(P.getDegree_3().length()>3)
      {
      %>
      <div class="w3-container">
       <hr>
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_3() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_3() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_3() %></b></h6>
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_3()%>, Affiliated with <%= P.getAffiliate_3() %></h4></p>
      </div>
      <%
      }
      if(P.getDegree_4().length()>3)
      {
      %>
      <div class="w3-container">
       <hr>
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_4() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_4() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_4() %></b></h6>
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_4()%>, Affiliated with <%= P.getAffiliate_4() %></h4></p>
      </div>
      <%
      }
      if(P.getDegree_5().length()>3)
      {
      %>
      <div class="w3-container">
       <hr>
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_5() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_5() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_5() %></b></h6>
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_5()%>, Affiliated with <%= P.getAffiliate_5() %></h4></p>
      </div>
      <%
      }
      if(P.getDegree_6().length()>3)
      {
      %>
      <div class="w3-container">
       <hr>
       <h4><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round"><%= P.getDegree_6() %></span></h4>
       <h5 class="w3-opacity"><b><%= P.getInstitute_6() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><b><%= P.getSession_6() %></b></h6>
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_6() %>, Affiliated with <%= P.getAffiliate_6() %></h4></p>
      </div>
      <%
      }
      %>
     </div>
     <!-- Certificate -->  
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16">
       <i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Certificate
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=cert_detail" style="text-decoration:none;" title="Update Cetificate Info">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
      </h2>
      <%
      if(!P.getCertificate_1().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_1() %></big></p>
      </div>
      <%
      }
      if(!P.getCertificate_2().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_2() %></big></p>
      </div>
      <%
      }
      if(!P.getCertificate_3().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_3() %></big></p>
      </div>
      <%
      }
      if(!P.getCertificate_4().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_4() %></big></p>
      </div>
      <%
      }
      if(!P.getCertificate_5().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_5() %></big></p>
      </div>
      <%
      }
      if(!P.getCertificate_6().isEmpty())
      {
      %>
      <div class="w3-container">
       <p><big><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i><%= P.getCertificate_6() %></big></p>
      </div>
      <%
      }
      %>
     </div>
     <!-- Work Experience -->  
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16">
       <i class="fa fa-briefcase fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Experience
       <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=work_detail" style="text-decoration:none;" title="Update Work Experience">
         <span class="w3-right" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-brown w3-hover-text-black"></i></span>
       </a>
      </h2>
      <h2 class="w3-text-grey w3-padding-16"><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left w3-padding w3-card"><i class="fa fa-chain-broken fa-fw w3-margin-right w3-large w3-text-white"></i><%= P.getWorkexperience() %></span></h2>
      <%
      if(!P.getWorkexperience().equalsIgnoreCase("Fresher"))
      {
      %>
      <%
      if(!P.getProject_1().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <h5 class="w3-opacity"><b><%= P.getProject_1() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_1() %></h6>
       <p><%= P.getWork_1() %></p>
      <%
      if(!P.getWorklink_1().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_1() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>      
      <%
      if(!P.getProject_2().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_2() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_2() %></h6>
       <p><%= P.getWork_2() %></p>
      <%
      if(!P.getWorklink_2().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_2() %>" target="_blank"><%= P.getWorklink_2() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>
      <%
      if(!P.getProject_3().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_3() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_3() %></h6>
       <p><%= P.getWork_3() %></p>
      <%
      if(!P.getWorklink_3().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_3() %></a></span>
      <%
      }
      %>
      <%
      if(!P.getProject_4().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_4() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_4() %></h6>
       <p><%= P.getWork_4() %></p>
      <%
      if(!P.getWorklink_4().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_4() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>
      <%
      if(!P.getProject_5().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_5() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_5() %></h6>
       <p><%= P.getWork_5() %></p>
      <%
      if(!P.getWorklink_5().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_5() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>
      <%
      if(!P.getProject_6().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_6() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_6() %></h6>
       <p><%= P.getWork_6() %></p>
      <%
      if(!P.getWorklink_6().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_6() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>
      <%
      if(!P.getProject_7().isEmpty())
      {
      %>
      <div class="w3-container w3-margin-bottom">
       <hr>
       <h5 class="w3-opacity"><b><%= P.getProject_7() %></b></h5>
       <h6 class="w3-text-<%= P.getCv_theme() %>"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%= P.getProjectdate_7() %></h6>
       <p><%= P.getWork_7() %></p>
      <%
      if(!P.getWorklink_7().isEmpty())
      {
      %>
       <i class="fa fa-link"></i><span class="w3-tag w3-<%= P.getCv_theme() %> w3-round w3-margin-left" style="cursor:pointer;"><a onMouseOver="this.style.color='white'" href="<%= P.getWorklink_1() %>" target="_blank"><%= P.getWorklink_7() %></a></span>
      <%
      }
      %>
      </div>
      <%
      }
      %>
      </div>
      <%
      }
      %> 
      <%
      }
      %>
     </div>
     <!-- End Right Column -->
    </div>
    <!-- End Grid -->
   </div>
   <!-- End Page Container -->
  </div>
  <footer class="w3-container w3-<%= P.getCv_theme() %> w3-center w3-margin-top">
   <p class="w3-margin-top">
    Find me on social media.&nbsp;&nbsp;
    <a href="../../cv_update_link?mobile=<%= P.getMobile() %>&pages=sml_detail" style="text-decoration:none;" title="Update Social Connection">
         <span class="w3-center" style="cursor:pointer;"><i class="fa fa-pencil w3-xlarge w3-text-white w3-hover-text-sand"></i></span>
    </a>
   </p>
   <h3 class="w3-margin-bottom">
   <%
   if(!P.getLinkedin().isEmpty())
   {
   %>
   <a href="<%= P.getLinkedin() %>" onMouseOver="this.style.color='white'" title="linkedin" style="text-decoration:none;" target="_blank">
    <i class="fa fa-linkedin w3-hover-opacity w3-margin-right"></i>
   </a>
   <%
   }
   %>
   <%
   if(!P.getTwitter().isEmpty())
   {
   %>
   <a href="<%= P.getTwitter() %>" onMouseOver="this.style.color='white'" title="twitter" style="text-decoration:none;" target="_blank">
    <i class="fa fa-twitter w3-hover-opacity w3-margin-right"></i>
   </a>
   <%
   }
   %>
   <%
   if(!P.getFacebook().isEmpty())
   {
   %>
   <a href="<%= P.getFacebook()%>" onMouseOver="this.style.color='white'" title="facebook" style="text-decoration:none;" target="_blank">
    <i class="fa fa-facebook-official w3-hover-opacity w3-margin-right"></i>
   </a>
   <%
   }
   %>
   <%
   if(!P.getInstagram().isEmpty())
   {
   %>
   <a href="<%= P.getInstagram()%>" onMouseOver="this.style.color='white'" title="instagram" style="text-decoration:none;" target="_blank">
    <i class="fa fa-instagram w3-hover-opacity w3-margin-right"></i>
   </a>
   <%
   }
   %>
   <a href="tel:<%= P.getIsd() %><%= P.getMobile() %>" onMouseOver="this.style.color='white'" title="call on number" style="text-decoration:none;">
    <i class="fa fa-phone-square w3-hover-opacity w3-margin-right"></i>
   </a>
   <a href="tel:<%= P.getIsd() %><%= P.getAltmobile() %>" onMouseOver="this.style.color='white'" title="call on alternate number" style="text-decoration:none;">
    <i class="fa fa-phone w3-hover-opacity w3-margin-right"></i>
   </a>
   <a href="https://wa.me/<%= P.getIsd() %><%= P.getMobile() %>" target="_blank" onMouseOver="this.style.color='white'" title="whatsapp" style="text-decoration:none;">
    <i class="fa fa-whatsapp w3-hover-opacity w3-margin-right"></i>
   </a>
   <a href="sms:<%= P.getIsd() %><%= P.getMobile() %>&body=hii" onMouseOver="this.style.color='white'" title="text message" style="text-decoration:none;">
    <i class="fa fa-comments w3-hover-opacity w3-margin-right"></i>
   </a>
   </h3>
   <p>Powered by <b style="cursor:pointer;">Resume Creta</b></p>
  </footer>
  <input type="hidden" name="profile_link" id="profile_link" value="">
  <%
  if(P.getVisibility().equalsIgnoreCase("Show"))
  {
  %>
  <pingendo class="copybtn" style="cursor:pointer;position: fixed;bottom: 41px;right:20px;padding:4px;background-color:royalblue;border-radius: 10px; width:175px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white"><img src="http://localhost:8084/ResumeCreta/images/copy.png" class="d-block" alt="Creta" height="30" draggable="false">&nbsp;&nbsp;<big>Copy profile link</big></pingendo>
  <%
  }
  else
  {
  %>
  <pingendo onclick="if(confirm('Turn on visibility first.\nDo you want to visible profile.')){window.location.href='../../resume_visible?mobile=<%= P.getMobile() %>'}" style="cursor:pointer;position: fixed;bottom: 41px;right:20px;padding:4px;background-color:royalblue;border-radius: 10px; width:200px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white"><img src="http://localhost:8084/ResumeCreta/images/expire.png" class="d-block" alt="Creta" height="30" draggable="false">&nbsp;&nbsp;<big>Profile link expired.</big></pingendo>
  <%
  }
  %>
  <script src="http://localhost:8084/ResumeCreta/js/clipboard.min.js"></script>
  <script>
    var clipboard = new ClipboardJS('.copybtn', {
        text: function() {
            return 'http://www.resumecreta.com:8084/ResumeCreta/profile?cv=<%= P.getMobile() %>';
        }
    });

    clipboard.on('success', function(e) {
        console.log(e);
        alert('Profile\'s link copied.');
    });

    clipboard.on('error', function(e) {
        console.log(e);
        //alert('Profile\'s link not copied.');
    });
  </script>
  <!-- qr modal -->
  <div id="qr_modal" class="w3-modal w3-card-4" onclick="this.style.display='none'">
    <div class="w3-modal-content w3-animate-zoom">
        <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
        <img src="http://localhost:8084/ResumeCreta/image_qr/<%= P.getMobile() %>.png" style="width:50%" draggable="false">
        <div class="centered">
            <img src="http://localhost:8084/ResumeCreta/images/logo.png" style="width:60px;height:60px;" draggable="false">  
        </div>
        <div class="others">
            <img src="http://localhost:8084/ResumeCreta/images/qr_scan.gif" style="width:350px;height:350px;" draggable="false">  
        </div>
    </div>
  </div>
  <style>
  .centered 
  {
  position: absolute;
  top: 50%;
  left: 25%;
  transform: translate(-50%, -50%);
  }
  .others
  {
  position: absolute;
  top: 50%;
  left: 75%;
  transform: translate(-50%, -50%);
  }
  </style>
  <!-- AddToAny BEGIN -->
  <%
  if(Q.getQr_status().equals("deactivate"))
  {
  %>
  <div class="a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style w3-card-4" data-a2a-url="http://www.resumecreta.com:8084/ResumeCreta/profile?cv=<%=P.getMobile()%>" style="left:0px; top:500px;">
   <b class="w3-center w3-text-black">Share</b>
   <a class="a2a_button_copy_link w3-hover-text-<%= P.getCv_theme() %>" href="https://www.addtoany.com/add_to/copy_link?linkurl=http%3A%2F%2Fwww.resumecreta.com%3A8084%2FResumeCreta%2Fprofile%3Fcv%3D<%=P.getMobile()%>"><i class="fa w3-xxlarge" id="la"></i></a>
   <a class="w3-hover-text-<%= P.getCv_theme() %>" href="https://mail.google.com/mail/u/0/?ui=2&view=cm&fs=1&tf=1&su=<%=P.getFirstname()%>+|+<%=P.getCv_type()%>&body=http://www.resumecreta.com:8084/ResumeCreta/profile?cv%3D<%=P.getMobile()%>%0D%0A%0D%0ACheck%20out%20my%20digital%20%20<%=P.getCv_type()%>,%0D%0Acreated%20on%20Resume%20Creta:%20http://www.resumecreta.com:8084/ResumeCreta/" target="_blank"><i class="fa fa-envelope w3-xxlarge"></i></a>
   <a class="w3-hover-text-<%= P.getCv_theme() %>" href="https://api.whatsapp.com/send?text=Hii%2C%20I%20am%20<%=P.getFirstname()%>%20<%=P.getLastname()%>...%0AThis%20is%20my%20digital%20<%=P.getCv_type()%>.%0Ahttp%3A%2F%2Fwww.resumecreta.com%3A8084%2FResumeCreta%2Fprofile%3Fcv%3D8871152219%0A*Powered%20by%20Resume%20Creta*" target="_blank"><i class="fa fa-whatsapp w3-xxlarge"></i></a>
  </div>
  <%
  }
  else
  {
  %>
  <div class="a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style w3-card-4" data-a2a-url="http://www.resumecreta.com:8084/ResumeCreta/profile?cv=<%=P.getMobile()%>" style="left:0px; top:450px;">
   <b class="w3-center w3-text-black">Share</b>
   <a class="a2a_button_copy_link w3-hover-text-<%= P.getCv_theme() %>" href="https://www.addtoany.com/add_to/copy_link?linkurl=http%3A%2F%2Fwww.resumecreta.com%3A8084%2FResumeCreta%2Fprofile%3Fcv%3D<%=P.getMobile()%>"><i class="fa w3-xxlarge" id="la"></i></a>
   <a class="w3-hover-text-<%= P.getCv_theme() %>" onclick="document.getElementById('qr_modal').style.display='block'"><i class="fa fa-qrcode w3-xxlarge"></i></a>
   <a class="w3-hover-text-<%= P.getCv_theme() %>" href="https://mail.google.com/mail/u/0/?ui=2&view=cm&fs=1&tf=1&su=<%=P.getFirstname()%>+|+<%=P.getCv_type()%>&body=http://www.resumecreta.com:8084/ResumeCreta/profile?cv%3D<%=P.getMobile()%>%0D%0A%0D%0ACheck%20out%20my%20digital%20%20<%=P.getCv_type()%>,%0D%0Acreated%20on%20Resume%20Creta:%20http://www.resumecreta.com:8084/ResumeCreta/" target="_blank"><i class="fa fa-envelope w3-xxlarge"></i></a>
   <a class="w3-hover-text-<%= P.getCv_theme() %>" href="https://api.whatsapp.com/send?text=Hii%2C%20I%20am%20<%=P.getFirstname()%>%20<%=P.getLastname()%>...%0AThis%20is%20my%20digital%20<%=P.getCv_type()%>.%0Ahttp%3A%2F%2Fwww.resumecreta.com%3A8084%2FResumeCreta%2Fprofile%3Fcv%3D8871152219%0A*Powered%20by%20Resume%20Creta*" target="_blank"><i class="fa fa-whatsapp w3-xxlarge"></i></a>
  </div>
  <%
  }   
  %>
  <script async src="https://static.addtoany.com/menu/page.js"></script>
  <!-- AddToAny END -->
  <script>
    function brakechain() {
      var a;
      a = document.getElementById("la");
      a.innerHTML = "&#xf0c1;";
      setTimeout(function () {
          a.innerHTML = "&#xf127;";
        }, 1000);
    }
    brakechain();
    setInterval(brakechain, 2000);
   </script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 </body>
</html>