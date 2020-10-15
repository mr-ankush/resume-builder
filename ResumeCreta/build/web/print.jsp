<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title><%= P.getMobile() %> | <%= P.getFirstname() %> | Resume CRETA</title>
        <script type="text/javascript">
        var documentTitle = document.title + " - ";
        (function titleMarquee() 
        {
            document.title = documentTitle = documentTitle.substring(1) + documentTitle.substring(0,1);
            setTimeout(titleMarquee,200);
        }
        )();
        </script>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="http://localhost:8084/ResumeCreta/images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="http://localhost:8084/ResumeCreta/css/style.css">
        <script>
            function myFunction()
            {
                var place,date,day;
                place=prompt("Information is visible on CV\nIn which city are the Interview : ");
		date=prompt("Information is visible on CV\nDate of Interview : [any format accepted]");
                day=prompt("Information is visible on CV\nDay of Interview : ");
                if(place!=null)
                {
                    document.getElementById("place").innerHTML = "Place&nbsp;&nbsp;:&nbsp;&nbsp;"+place;
                }
                else
                {
                    document.getElementById("place").innerHTML = "Place&nbsp;&nbsp;:&nbsp;&nbsp;";
                }
                if(date!=null)
                {
                    document.getElementById("date").innerHTML = "Date&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;"+date;
                }
                else
                {
                    document.getElementById("date").innerHTML = "Date&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;";
                }
                if(day!=null)
                {
                    document.getElementById("day").innerHTML = "Day&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;"+day;
                }
                else
                {
                    document.getElementById("day").innerHTML = "Day&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;";
                }
                window.print();
            }
        </script>
    </head>
  <%
  if(mobile!=null)
  {
  %>
    <%
    if(P.getCv_type().equalsIgnoreCase("Curriculum Vitae"))
    {
    %>
    <body onload="myFunction()" onafterprint="closing()" class="w3-margin">
        <script>
        function closing()
        {
            var v =confirm('Do you want to go back to profile?');
            if(v==true)
            {
                close();
            }   
        }
        </script>
        <!-- Intro -->
        <fieldset>
            <legend class="w3-center"><h1><i class="fa fa-paperclip"></i> <%= P.getCv_type() %></h1></legend>
            <div class="w3-container w3-margin-top">
                <div class="w3-left w3-margin-left" style="width:35%;">
                    <h4><strong><%= P.getFirstname() %> <%= P.getLastname() %></strong></h4>
                    <p>
                        <i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<%= P.getLa_city() %>, <%= P.getLa_state() %>, <%= P.getLa_country() %>
                        <br>
                        <i class="fa fa-envelope"></i>&nbsp;&nbsp;<%= P.getEmail() %>
                        <br>
                        <i class="fa fa-phone-square"></i>&nbsp;&nbsp;(<%= P.getIsd() %>)<%= P.getMobile() %>
                        <br>
                        <i class="fa fa-phone"></i>&nbsp;&nbsp;(<%= P.getIsd() %>)<%= P.getAltmobile() %>
                    </p>
                </div>
                <div class="w3-right" style="width:10%;">
                    <i class="fa fa-picture-o w3-xxxlarge w3-margin-right"></i>
                    <p>Photo</p>
                </div>
            </div>
        </fieldset>
        <br><br>
        <!-- objective -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-quote-left w3-xxxlarge"></i>&nbsp;CAREER ABSTRACT</h1>
            <hr class="w3-margin-bottom">
            <p class="w3-left w3-margin-left w3-margin-top w3-justify"><big><%= P.getObjective() %></big></p>
        </div>
        <!-- education -->
        <div class="w3-container w3-left w3-margin-top w3-padding w3-grayscale" style="width:100%;">
            <h1><i class="fa fa-graduation-cap w3-xxxlarge"></i>&nbsp;EDUCATION</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table class="table table-bordered"  width="100%">
                    <thead>
                        <tr class="w3-center">
                            <th width="20%">Degree</th>
                            <th width="40%">Institute</th>
                            <th width="15%">Affiliation</th>
                            <th width="15%">Session</th>
                            <th width="10%">Score</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getDegree_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_1() %></td>
                            <td><%= P.getInstitute_1() %></td>
                            <td><%= P.getAffiliate_1() %></td>
                            <td><%= P.getSession_1() %></td>
                            <td><%= P.getScore_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_2() %></td>
                            <td><%= P.getInstitute_2() %></td>
                            <td><%= P.getAffiliate_2() %></td>
                            <td><%= P.getSession_2() %></td>
                            <td><%= P.getScore_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_3() %></td>
                            <td><%= P.getInstitute_3() %></td>
                            <td><%= P.getAffiliate_3() %></td>
                            <td><%= P.getSession_3() %></td>
                            <td><%= P.getScore_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_4() %></td>
                            <td><%= P.getInstitute_4() %></td>
                            <td><%= P.getAffiliate_4() %></td>
                            <td><%= P.getSession_4() %></td>
                            <td><%= P.getScore_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_5() %></td>
                            <td><%= P.getInstitute_5() %></td>
                            <td><%= P.getAffiliate_5() %></td>
                            <td><%= P.getSession_5() %></td>
                            <td><%= P.getScore_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_6() %></td>
                            <td><%= P.getInstitute_6() %></td>
                            <td><%= P.getAffiliate_6() %></td>
                            <td><%= P.getSession_6() %></td>
                            <td><%= P.getScore_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- language -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-globe w3-xxxlarge"></i>&nbsp;LANGUAGE KNOWN</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <thead>
                        <tr>
                            <th width="10%"></th>
                            <th width="40%">Language</th>
                            <th width="50%">Capability/Ability</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getLk_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_1() %></td>
                            <td><%= P.getLkv_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_2() %></td>
                            <td><%= P.getLkv_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_3() %></td>
                            <td><%= P.getLkv_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_4() %></td>
                            <td><%= P.getLkv_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_5() %></td>
                            <td><%= P.getLkv_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- skills -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-asterisk w3-xxxlarge"></i>&nbsp;SKILLS</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getS_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_1() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_3() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_5() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_7().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_7() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_8() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_9().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_9() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_10() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_11().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_11() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_12() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_13().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_13() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_14() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_15().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_15() %></td>
                            <td width="10%"></td>
                            <td width="40%"></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- behaviour & attitude -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-snowflake-o w3-xxxlarge"></i>&nbsp;BEHAVIOUR & ATTITUDE</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getBa_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- interest & hobby -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-trophy w3-xxxlarge"></i>&nbsp;INTEREST & HOBBY</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getIh_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- certificate -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-certificate w3-xxxlarge"></i>&nbsp;CERTIFICATE</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getCertificate_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_4()%></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_5()%></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- work experience -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-briefcase w3-xxxlarge"></i>&nbsp;WORK EXPERIENCE</h1>
            <hr class="w3-margin-bottom">
            <h3 class="w3-margin-left"><i class="fa fa-tags w3-margin-left w3-margin-right"></i>&nbsp;<%= P.getWorkexperience() %></h3>
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="25%">Project</th>
                            <th width="15%">Duration</th>
                            <th width="50%">Description</th>
                            <th width="10%">Link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getProject_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_1() %></th>
                            <th width="15%"><%= P.getProjectdate_1() %></th>
                            <th width="50%"><%= P.getWork_1() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_1().isEmpty()))
                                {
                                out.println(P.getWorklink_1());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_2() %></th>
                            <th width="15%"><%= P.getProjectdate_2() %></th>
                            <th width="50%"><%= P.getWork_2() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_2().isEmpty()))
                                {
                                out.println(P.getWorklink_2());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_3() %></th>
                            <th width="15%"><%= P.getProjectdate_3() %></th>
                            <th width="50%"><%= P.getWork_3() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_3().isEmpty()))
                                {
                                out.println(P.getWorklink_3());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_4() %></th>
                            <th width="15%"><%= P.getProjectdate_4() %></th>
                            <th width="50%"><%= P.getWork_4() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_4().isEmpty()))
                                {
                                out.println(P.getWorklink_4());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_5() %></th>
                            <th width="15%"><%= P.getProjectdate_5() %></th>
                            <th width="50%"><%= P.getWork_5() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_5().isEmpty()))
                                {
                                out.println(P.getWorklink_5());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_6() %></th>
                            <th width="15%"><%= P.getProjectdate_6() %></th>
                            <th width="50%"><%= P.getWork_6() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_6().isEmpty()))
                                {
                                out.println(P.getWorklink_6());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_7().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_7() %></th>
                            <th width="15%"><%= P.getProjectdate_7() %></th>
                            <th width="50%"><%= P.getWork_7() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_7().isEmpty()))
                                {
                                out.println(P.getWorklink_7());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- personal detail -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-user-circle-o w3-xxxlarge"></i>&nbsp;PERSONAL INFORMATION</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Name</td>
                            <td width="70%"><%= P.getFirstname() %> <%= P.getLastname() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Father's Name</td>
                            <td width="70%"><%= P.getF_name() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Mother's Name</td>
                            <td width="70%"><%= P.getM_name() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Date of Birth</td>
                            <td width="70%"><%= P.getDob_date() %> / <%= P.getDob_month() %> / <%= P.getDob_year() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Gender</td>
                            <td width="70%"><%= P.getGender() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Local Address</td>
                            <td width="70%"><%= P.getLa_city() %>, <%= P.getLa_state() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Resident Address</td>
                            <td width="70%"><%= P.getPermanentadd() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Nationality</td>
                            <td width="70%"><%= P.getNationality() %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- declaration -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-tags w3-xxxlarge"></i>&nbsp;DECLARATION</h1>
            <hr class="w3-margin-bottom">
            <p class="w3-left w3-margin-left w3-margin-top w3-justify"><big>I hereby declare that all the information stated above is true to best of my knowledge and belief. I take the responsibility of any mistakes in data if occur in future.</big></p>
        </div>
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <div class="w3-left" style="width:50%">
                <p>
                    <span id="place"></span>
                    <br>
                    <span id="date"></span>
                    <br>
                    <span id="day"></span>
                </p>
            </div>
            <div class="w3-right" style="width:30%;">
                <p><%= P.getFirstname() %> <%= P.getLastname() %></p>
            </div>
        </div>
    </body>
    <%
    }
    else
    {
    %>
    <body onload="myFunction()" onafterprint="closing()" class="w3-margin">
        <script>
        function closing()
        {
            var v =confirm('Do you want to go back to profile?');
            if(v==true)
            {
                close();
            }   
        }
        </script>
        <!-- Intro -->
        <fieldset>
            <legend class="w3-center"><h1><i class="fa fa-paperclip"></i> <%= P.getCv_type() %></h1></legend>
            <div class="w3-container w3-margin-top">
                <div class="w3-left w3-margin-left" style="width:35%;">
                    <h4><strong><%= P.getFirstname() %> <%= P.getLastname() %></strong></h4>
                    <p>
                        <i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<%= P.getLa_city() %>, <%= P.getLa_state() %>, <%= P.getLa_country() %>
                        <br>
                        <i class="fa fa-envelope"></i>&nbsp;&nbsp;<%= P.getEmail() %>
                        <br>
                        <i class="fa fa-phone-square"></i>&nbsp;&nbsp;(<%= P.getIsd() %>)<%= P.getMobile() %>
                        <br>
                        <i class="fa fa-phone"></i>&nbsp;&nbsp;(<%= P.getIsd() %>)<%= P.getAltmobile() %>
                    </p>
                </div>
                <div class="w3-right" style="width:10%;">
                    <i class="fa fa-picture-o w3-xxxlarge w3-margin-right"></i>
                    <p>Photo</p>
                </div>
            </div>
        </fieldset>
        <br><br>
        <!-- objective -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-quote-left w3-xxxlarge"></i>&nbsp;CAREER ABSTRACT</h1>
            <hr class="w3-margin-bottom">
            <p class="w3-left w3-margin-left w3-margin-top w3-justify"><big><%= P.getObjective() %></big></p>
        </div>
        <!-- education -->
        <div class="w3-container w3-left w3-margin-top w3-padding w3-grayscale" style="width:100%;">
            <h1><i class="fa fa-graduation-cap w3-xxxlarge"></i>&nbsp;EDUCATION</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table class="table table-bordered"  width="100%">
                    <thead>
                        <tr class="w3-center">
                            <th width="20%">Degree</th>
                            <th width="40%">Institute</th>
                            <th width="15%">Affiliation</th>
                            <th width="15%">Session</th>
                            <th width="10%">Score</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getDegree_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_1() %></td>
                            <td><%= P.getInstitute_1() %></td>
                            <td><%= P.getAffiliate_1() %></td>
                            <td><%= P.getSession_1() %></td>
                            <td><%= P.getScore_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_2() %></td>
                            <td><%= P.getInstitute_2() %></td>
                            <td><%= P.getAffiliate_2() %></td>
                            <td><%= P.getSession_2() %></td>
                            <td><%= P.getScore_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_3() %></td>
                            <td><%= P.getInstitute_3() %></td>
                            <td><%= P.getAffiliate_3() %></td>
                            <td><%= P.getSession_3() %></td>
                            <td><%= P.getScore_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_4() %></td>
                            <td><%= P.getInstitute_4() %></td>
                            <td><%= P.getAffiliate_4() %></td>
                            <td><%= P.getSession_4() %></td>
                            <td><%= P.getScore_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_5() %></td>
                            <td><%= P.getInstitute_5() %></td>
                            <td><%= P.getAffiliate_5() %></td>
                            <td><%= P.getSession_5() %></td>
                            <td><%= P.getScore_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getDegree_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><%= P.getDegree_6() %></td>
                            <td><%= P.getInstitute_6() %></td>
                            <td><%= P.getAffiliate_6() %></td>
                            <td><%= P.getSession_6() %></td>
                            <td><%= P.getScore_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- language -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-globe w3-xxxlarge"></i>&nbsp;LANGUAGE KNOWN</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <thead>
                        <tr>
                            <th width="10%"></th>
                            <th width="40%">Language</th>
                            <th width="50%">Capability/Ability</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getLk_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_1() %></td>
                            <td><%= P.getLkv_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_2() %></td>
                            <td><%= P.getLkv_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_3() %></td>
                            <td><%= P.getLkv_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_4() %></td>
                            <td><%= P.getLkv_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getLk_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td><i class="fa fa-check-square-o"></i></td>
                            <td><%= P.getLk_5() %></td>
                            <td><%= P.getLkv_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- skills -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-asterisk w3-xxxlarge"></i>&nbsp;SKILLS</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getS_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_1() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_3() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_5() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_7().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_7() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_8() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_9().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_9() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_10() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_11().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_11() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_12() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_13().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_13() %></td>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_14() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getS_15().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="40%"><%= P.getS_15() %></td>
                            <td width="10%"></td>
                            <td width="40%"></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- behaviour & attitude -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-snowflake-o w3-xxxlarge"></i>&nbsp;BEHAVIOUR & ATTITUDE</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getBa_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getBa_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getBa_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- interest & hobby -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-trophy w3-xxxlarge"></i>&nbsp;INTEREST & HOBBY</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getIh_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_4() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_5() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getIh_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getIh_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- certificate -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-certificate w3-xxxlarge"></i>&nbsp;CERTIFICATE</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <%
                        if(!(P.getCertificate_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_1() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_2() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_3() %></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_4()%></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_5()%></td>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getCertificate_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <td width="10%"><i class="fa fa-check-square-o"></i></td>
                            <td width="90%"><%= P.getCertificate_6() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- work experience -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-briefcase w3-xxxlarge"></i>&nbsp;WORK EXPERIENCE</h1>
            <hr class="w3-margin-bottom">
            <h3 class="w3-margin-left"><i class="fa fa-tags w3-margin-left w3-margin-right"></i>&nbsp;<%= P.getWorkexperience() %></h3>
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="25%">Project</th>
                            <th width="15%">Duration</th>
                            <th width="50%">Description</th>
                            <th width="10%">Link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        if(!(P.getProject_1().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_1() %></th>
                            <th width="15%"><%= P.getProjectdate_1() %></th>
                            <th width="50%"><%= P.getWork_1() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_1().isEmpty()))
                                {
                                out.println(P.getWorklink_1());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_2().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_2() %></th>
                            <th width="15%"><%= P.getProjectdate_2() %></th>
                            <th width="50%"><%= P.getWork_2() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_2().isEmpty()))
                                {
                                out.println(P.getWorklink_2());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_3().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_3() %></th>
                            <th width="15%"><%= P.getProjectdate_3() %></th>
                            <th width="50%"><%= P.getWork_3() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_3().isEmpty()))
                                {
                                out.println(P.getWorklink_3());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_4().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_4() %></th>
                            <th width="15%"><%= P.getProjectdate_4() %></th>
                            <th width="50%"><%= P.getWork_4() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_4().isEmpty()))
                                {
                                out.println(P.getWorklink_4());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_5().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_5() %></th>
                            <th width="15%"><%= P.getProjectdate_5() %></th>
                            <th width="50%"><%= P.getWork_5() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_5().isEmpty()))
                                {
                                out.println(P.getWorklink_5());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_6().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_6() %></th>
                            <th width="15%"><%= P.getProjectdate_6() %></th>
                            <th width="50%"><%= P.getWork_6() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_6().isEmpty()))
                                {
                                out.println(P.getWorklink_6());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                        <%
                        if(!(P.getProject_7().isEmpty()))
                        {
                        %>
                        <tr>
                            <th width="25%"><%= P.getProject_7() %></th>
                            <th width="15%"><%= P.getProjectdate_7() %></th>
                            <th width="50%"><%= P.getWork_7() %></th>
                            <th width="10%">
                                <%
                                if(!(P.getWorklink_7().isEmpty()))
                                {
                                out.println(P.getWorklink_7());
                                }
                                else
                                {
                                out.println("not available");    
                                }
                                %>
                            </th>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- personal detail -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-user-circle-o w3-xxxlarge"></i>&nbsp;PERSONAL INFORMATION</h1>
            <hr class="w3-margin-bottom">
            <div class="w3-container w3-margin-left w3-margin-right">
                <table width="100%">
                    <tbody>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Name</td>
                            <td width="70%"><%= P.getFirstname() %> <%= P.getLastname() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Father's Name</td>
                            <td width="70%"><%= P.getF_name() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Mother's Name</td>
                            <td width="70%"><%= P.getM_name() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Date of Birth</td>
                            <td width="70%"><%= P.getDob_date() %> / <%= P.getDob_month() %> / <%= P.getDob_year() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Gender</td>
                            <td width="70%"><%= P.getGender() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Local Address</td>
                            <td width="70%"><%= P.getLa_city() %>, <%= P.getLa_state() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Resident Address</td>
                            <td width="70%"><%= P.getPermanentadd() %></td>
                        </tr>
                        <tr>
                            <td width="5%"></td>
                            <td width="25%">Nationality</td>
                            <td width="70%"><%= P.getNationality() %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- declaration -->
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <h1><i class="fa fa-tags w3-xxxlarge"></i>&nbsp;DECLARATION</h1>
            <hr class="w3-margin-bottom">
            <p class="w3-left w3-margin-left w3-margin-top w3-justify"><big>I hereby declare that all the information stated above is true to best of my knowledge and belief. I take the responsibility of any mistakes in data if occur in future.</big></p>
        </div>
        <div class="w3-container w3-left w3-margin-top w3-padding" style="width:100%;">
            <div class="w3-left" style="width:50%">
                <p>
                    <span id="place"></span>
                    <br>
                    <span id="date"></span>
                    <br>
                    <span id="day"></span>
                </p>
            </div>
            <div class="w3-right" style="width:30%;">
                <p><%= P.getFirstname() %> <%= P.getLastname() %></p>
            </div>
        </div>
    </body>
    <%
    }
    %>
  <%
  }
  %>
</html>