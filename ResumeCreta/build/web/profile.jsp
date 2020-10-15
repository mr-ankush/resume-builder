<%@page import="model.Qr"%>
<%@page import="dao.QRcodeDAO"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="dao.ProfileDAO"%>
<%@page import="model.Profile"%>
<%
ProfileDAO pd = new ProfileDAO();
Profile P;
String cv;
//cv = session.getAttribute("cv").toString();
cv = request.getParameter("cv");
P = pd.searchprofiledatabymobile(cv);
QRcodeDAO qd = new QRcodeDAO();
Qr Q;
Q = qd.searchQr_record(cv);
%>
<%
if(ProfileDAO.checkuser(cv))
{
%>
<!DOCTYPE html>
<html>
 <head>
  <title><%= P.getMobile() %> | Profile CRETA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/logo.png">
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
   *
   {
    -webkit-user-select: none;
    -ms-user-select: none;
    user-select: none;
   }
   html,body,h1,h2,h3,h4,h5,h6 
   {
    font-family: "Roboto", sans-serif;
   }
  </style>
 </head>
 <%
 if(P.getVisibility().equalsIgnoreCase("Show"))
 {
 %>
 <body class="w3-light-grey" onoffline="lost()" ononline="load()" id="body">
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
 <a id="google_translate_element"></a>
 <pingendo title="Print CV" onclick="window.open('print?mobile=<%= P.getMobile() %>', '_blank')" class="w3-card w3-hover-opacity" style="cursor:pointer;position: fixed;top:45px;right:10px;padding:4px;background-color: tomato;border-radius:250px;height:50px;width:50px;display:flex;flex-direction:row;align-items:center;justify-content:center;color:white;"><i class="fa fa-file-pdf-o" style="font-size:25px;"></i></pingendo>
  <!-- Page Container -->
  <div class="w3-content w3-margin-top" style="max-width:1400px;">
   <!-- The Grid -->
   <div class="w3-row-padding">
    <!-- Left Column -->
    <div class="w3-third">
     <div class="w3-white w3-text-grey w3-card-4">
      <div class="w3-container">
       <h2 style="color:black;"><i class="fa fa-paperclip"></i> <%= P.getCv_type() %></h2>
      </div>
      <div class="w3-display-container">
       <%
       if(P.getPhoto()!=null)
       {
       %>   
       <img src="http://localhost:8084/ResumeCreta/image/<%= P.getMobile() %>-<%= P.getFirstname() %>.png" style="width:100%"/>
       <%
       }
       else
       {
       %> 
       <img src="http://localhost:8084/ResumeCreta/images/<%= P.getGender() %>.png" alt="image" style="width:100%"/>
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
       <p><i class="fa fa-suitcase fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><%= P.getCv_designation() %></p>
       <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><%= P.getLa_city() %>, <%= P.getLa_state() %>, <%= P.getLa_country() %>&nbsp;<a href="https://www.google.com/maps/place/<%= P.getLa_city() %>" target="_blank" style="cursor:pointer;color:black;">(search on map)</a></p>
       <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="mailto:<%= P.getEmail() %>"><%= P.getEmail() %></a></p>
       <p><i class="fa fa-phone-square fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="tel:<%= P.getIsd() %><%= P.getMobile() %>">(<%= P.getIsd() %>) <%= P.getMobile() %></a></p>
       <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="tel:<%= P.getIsd() %><%= P.getAltmobile() %>">(<%= P.getIsd() %>) <%= P.getAltmobile() %></a> (alternate)</p>
       <p><i class="fa fa-whatsapp fa-fw w3-margin-right w3-large w3-text-<%= P.getCv_theme() %>"></i><a href="https://api.whatsapp.com/send?phone=<%= P.getIsd() %><%= P.getMobile() %>" target="_blank">Chat on whatsapp</a></p>
       <hr>
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
       <%
       if(!P.getLk_1().isEmpty() || !P.getLk_2().isEmpty() || !P.getLk_3().isEmpty() || !P.getLk_4().isEmpty() || !P.getLk_5().isEmpty())
       {
       %>
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
       <%
       }
       %>
       <%
       if(!P.getS_1().isEmpty() || !P.getS_2().isEmpty() || !P.getS_3().isEmpty() || !P.getS_4().isEmpty() || !P.getS_5().isEmpty() ||
               !P.getS_6().isEmpty() || !P.getS_7().isEmpty() || !P.getS_8().isEmpty() || !P.getS_9().isEmpty() || !P.getS_10().isEmpty() ||
               !P.getS_11().isEmpty() || !P.getS_12().isEmpty() || !P.getS_13().isEmpty() || !P.getS_14().isEmpty() || !P.getS_15().isEmpty() )
       {
       %>
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
       <%
       }
       %>
       <%
       if(!P.getBa_1().isEmpty() || !P.getBa_2().isEmpty() || !P.getBa_3().isEmpty() || !P.getBa_4().isEmpty() || !P.getBa_5().isEmpty() || !P.getBa_6().isEmpty())
       {
       %>
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
       <%
       }
       %>
       <%
       if(!P.getIh_1().isEmpty() || !P.getIh_2().isEmpty() || !P.getIh_3().isEmpty() || !P.getIh_4().isEmpty() || !P.getIh_5().isEmpty() || !P.getIh_6().isEmpty())
       {
       %>
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
     <%
     if(!P.getObjective().isEmpty())
     {
     %>
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-rocket fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Career Abstract</h2>
      <div class="w3-container w3-justify">
       <p><i class="fa fa-quote-left fa-fw w3-margin-right w3-margin-left w3-xxlarge w3-text-gray"></i><big><%= P.getObjective() %></big></p>
       <hr>
      </div>
     </div>
     <%
     }
     %>
     <!-- Education -->  
     <%
     if(!P.getDegree_1().isEmpty() || !P.getDegree_2().isEmpty() || !P.getDegree_3().isEmpty() || 
             !P.getDegree_4().isEmpty() || !P.getDegree_5().isEmpty() || !P.getDegree_6().isEmpty() )
     {
     %>
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-graduation-cap fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Education</h2>
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
       <p><h4><i class="fa fa-tags w3-text-gray fa-fw w3-margin-right"></i>scored <%= P.getScore_1()%>, Affiliated with <%= P.getAffiliate_1() %></h4></p>
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
     <%
     }
     %>
     <!-- Certificate -->  
     <%
     if(!P.getCertificate_1().isEmpty() || !P.getCertificate_2().isEmpty() ||
              !P.getCertificate_3().isEmpty() || !P.getCertificate_4().isEmpty() ||
             !P.getCertificate_5().isEmpty() || !P.getCertificate_6().isEmpty())
     {
     %>
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Certificate</h2>
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
     <%
     }
     %>
     <!-- Work Experience -->  
     <div class="w3-container w3-card w3-white w3-margin-bottom">
      <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-briefcase fa-fw w3-margin-right w3-xxlarge w3-text-<%= P.getCv_theme() %>"></i>Experience</h2>
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
   <p class="w3-margin-top">Find me on social media.</p>
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
   <a href="https://api.whatsapp.com/send?phone=<%= P.getIsd() %><%= P.getMobile() %>" target="_blank" onMouseOver="this.style.color='white'" title="whatsapp" style="text-decoration:none;">
    <i class="fa fa-whatsapp w3-hover-opacity w3-margin-right"></i>
   </a>
   <a href="sms:<%= P.getIsd() %><%= P.getMobile() %>&body=hii" onMouseOver="this.style.color='white'" title="text message" style="text-decoration:none;">
    <i class="fa fa-comments w3-hover-opacity w3-margin-right"></i>
   </a>
   </h3>
   <p>Powered by <b style="cursor:pointer;">Resume Creta</b></p>
  </footer>
  <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color:royalblue;border-radius: 10px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:left;font-size:14px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Try it's free...</pingendo>
  <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 41px;right:20px;padding:4px;background-color:royalblue;border-radius: 0px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Resume Creta &nbsp;&nbsp;<img src="images/logo.png" class="d-block" alt="Creta" height="20"></pingendo>
 </body>
  <%
  }
  else
  {
  %>
  <body style="background:#fcfdfe;" onoffline="lost()" ononline="load()" id="body">
   <div class="container w3-center">
    <img src="images/hide.gif" alt="User profile is private" style="width:80%;height:auto;" draggable="false">
    <div class="centeredimg" style="cursor: pointer;">
     <div class="w3-container w3-card-4 w3-round-xlarge w3-text-black">
         <span onmouseover="change1()" onmouseout="change2()"><a href="" style="text-decoration:none;"><h2 id="hide1"><i class="fa fa-lock"></i>&nbsp;User's profile is hidden</h2></a></span>
     </div>
     <script>
      function change1(){
          document.getElementById("hide1").innerHTML = "<i class='fa fa-refresh fa-spin'></i>&nbsp;Refresh";
      }
      function change2(){
          document.getElementById("hide1").innerHTML = "<i class='fa fa-lock'></i>&nbsp;User's profile is hidden";
      }
     </script>
    </div>
    <div class="alert text-center footeralert">
     <p><strong><i class="fa fa-quote-left fa-fw w3-large w3-text-gray"></i><%= P.getV_msg() %></strong>.</p>
     <strong><i class="fa fa-user-circle-o w3-text-white"></i>&nbsp;<%= P.getFirstname() %> <%= P.getLastname() %> profile's is private since <%= P.getV_date() %></strong>
    </div>
    <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color:royalblue;border-radius: 10px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:left;font-size:14px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-left"></i>&nbsp;Back to Menu</pingendo>
    <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 41px;right:20px;padding:4px;background-color:royalblue;border-radius: 0px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Resume Creta &nbsp;&nbsp;<img src="images/logo.png" class="d-block" alt="Creta" height="20"></pingendo>
  </body>
  <%
  }
  %>
</html>
<style>
   .centeredimg 
   {
    position: absolute;
    top: 20%;
    left: 50%;
    transform: translate(-50%, -50%);
   }
   .footeralert
  {
   position: fixed;
   left: 0;
   bottom: -13px;
   width: 100%;
   //background-color:#300078;
   background-color:black;
   color: white;
   border-radius: 1px;
   //text-align: center;
  }
</style>
<%
}
else
{
%>
<!DOCTYPE>
<html>
 <head>
  <title>Invalid Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/logo.png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 </head>
 <body style="background:#fcfefe;">
  <div class="container w3-center">
   <img src="images/unavailable.gif" alt="User not found" style="width:80%;height:80%" draggable="false">
   <div class="centeredimginvalid" style="cursor: pointer;">
    <div class="w3-container w3-card-4 w3-round-xlarge w3-text-black">
     <span onmouseover="change3()" onmouseout="change4()"><a href="" style="text-decoration:none;"><h2 id="hide2"><i class="fa fa-exclamation-triangle w3-text-red"></i>&nbsp;User's profile is invalid</h2></a></span>
    </div>
   </div>
   <script>
    function change3(){
     document.getElementById("hide2").innerHTML = "<i class='fa fa-refresh  fa-spin'></i>&nbsp;Refresh";
    }
    function change4(){
     document.getElementById("hide2").innerHTML = "<i class='fa fa-exclamation-triangle w3-text-red'></i>&nbsp;User's profile is invalid";
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
   <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color:royalblue;border-radius: 10px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:left;font-size:14px;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-left"></i>&nbsp;Back to Menu</pingendo>
   <pingendo onclick="window.open('http://www.resumecreta.com:8084/ResumeCreta/', '_self')" style="cursor:pointer;position: fixed;bottom: 41px;right:20px;padding:4px;background-color:royalblue;border-radius: 0px; width:225px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Resume Creta &nbsp;&nbsp;<img src="images/logo.png" class="d-block" alt="Creta" height="20"></pingendo>
 </body>
</html>
<%
}
%>