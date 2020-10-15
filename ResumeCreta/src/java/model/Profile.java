package model;
import java.io.InputStream;
public class Profile 
{
    // login database
    String isd,mobile,email,username,password,forgetque,forgetans;
    // cv detail database
    String cv_type,cv_createdate,cv_updatedate,cv_theme,cv_designation;
    // photo detail database
    InputStream photo;
    // personal detail database
    String firstname,lastname,f_name,m_name,dob_date,dob_month,dob_year,gender,
            altmobile,la_city,la_state,la_country,nationality,permanentadd;
    // language known database
    String lk_1,lk_2,lk_3,lk_4,lk_5;
    String lkv_1,lkv_2,lkv_3,lkv_4,lkv_5;
    // skills database
    String s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15;
    String sv_1,sv_2,sv_3,sv_4,sv_5,sv_6,sv_7,sv_8,sv_9,sv_10,sv_11,sv_12,sv_13,sv_14,sv_15;
    // behaviour & attitude database
    String ba_1,ba_2,ba_3,ba_4,ba_5,ba_6;
    // interest & hobby database
    String ih_1,ih_2,ih_3,ih_4,ih_5,ih_6;
    // objecttive & career abstract database
    String objective;
    // educational detail database
    String degree_1,affiliate_1,institute_1,score_1,session_1;
    String degree_2,affiliate_2,institute_2,score_2,session_2;
    String degree_3,affiliate_3,institute_3,score_3,session_3;
    String degree_4,affiliate_4,institute_4,score_4,session_4;
    String degree_5,affiliate_5,institute_5,score_5,session_5;
    String degree_6,affiliate_6,institute_6,score_6,session_6;
    // certificate database
    String certificate_1,certificate_2,certificate_3,certificate_4,certificate_5,certificate_6;
    // experience
    String workexperience;
    String project_1,projectdate_1,work_1,worklink_1;
    String project_2,projectdate_2,work_2,worklink_2;
    String project_3,projectdate_3,work_3,worklink_3;
    String project_4,projectdate_4,work_4,worklink_4;
    String project_5,projectdate_5,work_5,worklink_5;
    String project_6,projectdate_6,work_6,worklink_6;
    String project_7,projectdate_7,work_7,worklink_7;
    // social media link database
    String linkedin,facebook,twitter,instagram;
    // visibility
    String visibility,v_msg,v_date;

    public String getIsd() {
        return isd;
    }
    public void setIsd(String isd) {
        this.isd = isd;
    }

    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getForgetque() {
        return forgetque;
    }
    public void setForgetque(String forgetque) {
        this.forgetque = forgetque;
    }

    public String getForgetans() {
        return forgetans;
    }
    public void setForgetans(String forgetans) {
        this.forgetans = forgetans;
    }

    public String getCv_type() {
        return cv_type;
    }
    public void setCv_type(String cv_type) {
        this.cv_type = cv_type;
    }

    public String getCv_createdate() {
        return cv_createdate;
    }
    public void setCv_createdate(String cv_createdate) {
        this.cv_createdate = cv_createdate;
    }

    public String getCv_updatedate() {
        return cv_updatedate;
    }
    public void setCv_updatedate(String cv_updatedate) {
        this.cv_updatedate = cv_updatedate;
    }

    public String getCv_theme() {
        return cv_theme;
    }
    public void setCv_theme(String cv_theme) {
        this.cv_theme = cv_theme;
    }

    public String getCv_designation() {
        return cv_designation;
    }
    public void setCv_designation(String cv_designation) {
        this.cv_designation = cv_designation;
    }

    public InputStream getPhoto() {
        return photo;
    }
    public void setPhoto(InputStream photo) {
        this.photo = photo;
    }

    public String getFirstname() {
        return firstname;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getF_name() {
        return f_name;
    }
    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getM_name() {
        return m_name;
    }
    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getDob_date() {
        return dob_date;
    }
    public void setDob_date(String dob_date) {
        this.dob_date = dob_date;
    }

    public String getDob_month() {
        return dob_month;
    }
    public void setDob_month(String dob_month) {
        this.dob_month = dob_month;
    }

    public String getDob_year() {
        return dob_year;
    }
    public void setDob_year(String dob_year) {
        this.dob_year = dob_year;
    }

    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAltmobile() {
        return altmobile;
    }
    public void setAltmobile(String altmobile) {
        this.altmobile = altmobile;
    }

    public String getLa_city() {
        return la_city;
    }
    public void setLa_city(String la_city) {
        this.la_city = la_city;
    }

    public String getLa_state() {
        return la_state;
    }
    public void setLa_state(String la_state) {
        this.la_state = la_state;
    }

    public String getLa_country() {
        return la_country;
    }
    public void setLa_country(String la_country) {
        this.la_country = la_country;
    }

    public String getNationality() {
        return nationality;
    }
    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getPermanentadd() {
        return permanentadd;
    }
    public void setPermanentadd(String permanentadd) {
        this.permanentadd = permanentadd;
    }

    public String getLk_1() {
        return lk_1;
    }
    public void setLk_1(String lk_1) {
        this.lk_1 = lk_1;
    }

    public String getLk_2() {
        return lk_2;
    }
    public void setLk_2(String lk_2) {
        this.lk_2 = lk_2;
    }

    public String getLk_3() {
        return lk_3;
    }
    public void setLk_3(String lk_3) {
        this.lk_3 = lk_3;
    }

    public String getLk_4() {
        return lk_4;
    }
    public void setLk_4(String lk_4) {
        this.lk_4 = lk_4;
    }

    public String getLk_5() {
        return lk_5;
    }
    public void setLk_5(String lk_5) {
        this.lk_5 = lk_5;
    }

    public String getLkv_1() {
        return lkv_1;
    }
    public void setLkv_1(String lkv_1) {
        this.lkv_1 = lkv_1;
    }

    public String getLkv_2() {
        return lkv_2;
    }
    public void setLkv_2(String lkv_2) {
        this.lkv_2 = lkv_2;
    }

    public String getLkv_3() {
        return lkv_3;
    }
    public void setLkv_3(String lkv_3) {
        this.lkv_3 = lkv_3;
    }

    public String getLkv_4() {
        return lkv_4;
    }
    public void setLkv_4(String lkv_4) {
        this.lkv_4 = lkv_4;
    }

    public String getLkv_5() {
        return lkv_5;
    }
    public void setLkv_5(String lkv_5) {
        this.lkv_5 = lkv_5;
    }

    public String getS_1() {
        return s_1;
    }
    public void setS_1(String s_1) {
        this.s_1 = s_1;
    }

    public String getS_2() {
        return s_2;
    }
    public void setS_2(String s_2) {
        this.s_2 = s_2;
    }

    public String getS_3() {
        return s_3;
    }
    public void setS_3(String s_3) {
        this.s_3 = s_3;
    }

    public String getS_4() {
        return s_4;
    }
    public void setS_4(String s_4) {
        this.s_4 = s_4;
    }

    public String getS_5() {
        return s_5;
    }
    public void setS_5(String s_5) {
        this.s_5 = s_5;
    }

    public String getS_6() {
        return s_6;
    }
    public void setS_6(String s_6) {
        this.s_6 = s_6;
    }

    public String getS_7() {
        return s_7;
    }
    public void setS_7(String s_7) {
        this.s_7 = s_7;
    }

    public String getS_8() {
        return s_8;
    }
    public void setS_8(String s_8) {
        this.s_8 = s_8;
    }

    public String getS_9() {
        return s_9;
    }
    public void setS_9(String s_9) {
        this.s_9 = s_9;
    }

    public String getS_10() {
        return s_10;
    }
    public void setS_10(String s_10) {
        this.s_10 = s_10;
    }

    public String getS_11() {
        return s_11;
    }
    public void setS_11(String s_11) {
        this.s_11 = s_11;
    }

    public String getS_12() {
        return s_12;
    }
    public void setS_12(String s_12) {
        this.s_12 = s_12;
    }

    public String getS_13() {
        return s_13;
    }
    public void setS_13(String s_13) {
        this.s_13 = s_13;
    }

    public String getS_14() {
        return s_14;
    }
    public void setS_14(String s_14) {
        this.s_14 = s_14;
    }

    public String getS_15() {
        return s_15;
    }
    public void setS_15(String s_15) {
        this.s_15 = s_15;
    }

    public String getSv_1() {
        return sv_1;
    }
    public void setSv_1(String sv_1) {
        this.sv_1 = sv_1;
    }

    public String getSv_2() {
        return sv_2;
    }
    public void setSv_2(String sv_2) {
        this.sv_2 = sv_2;
    }

    public String getSv_3() {
        return sv_3;
    }
    public void setSv_3(String sv_3) {
        this.sv_3 = sv_3;
    }

    public String getSv_4() {
        return sv_4;
    }
    public void setSv_4(String sv_4) {
        this.sv_4 = sv_4;
    }

    public String getSv_5() {
        return sv_5;
    }
    public void setSv_5(String sv_5) {
        this.sv_5 = sv_5;
    }

    public String getSv_6() {
        return sv_6;
    }
    public void setSv_6(String sv_6) {
        this.sv_6 = sv_6;
    }

    public String getSv_7() {
        return sv_7;
    }
    public void setSv_7(String sv_7) {
        this.sv_7 = sv_7;
    }

    public String getSv_8() {
        return sv_8;
    }
    public void setSv_8(String sv_8) {
        this.sv_8 = sv_8;
    }

    public String getSv_9() {
        return sv_9;
    }
    public void setSv_9(String sv_9) {
        this.sv_9 = sv_9;
    }

    public String getSv_10() {
        return sv_10;
    }
    public void setSv_10(String sv_10) {
        this.sv_10 = sv_10;
    }

    public String getSv_11() {
        return sv_11;
    }
    public void setSv_11(String sv_11) {
        this.sv_11 = sv_11;
    }

    public String getSv_12() {
        return sv_12;
    }
    public void setSv_12(String sv_12) {
        this.sv_12 = sv_12;
    }

    public String getSv_13() {
        return sv_13;
    }
    public void setSv_13(String sv_13) {
        this.sv_13 = sv_13;
    }

    public String getSv_14() {
        return sv_14;
    }
    public void setSv_14(String sv_14) {
        this.sv_14 = sv_14;
    }

    public String getSv_15() {
        return sv_15;
    }
    public void setSv_15(String sv_15) {
        this.sv_15 = sv_15;
    }
    
    public String getBa_1() {
        return ba_1;
    }
    public void setBa_1(String ba_1) {
        this.ba_1 = ba_1;
    }

    public String getBa_2() {
        return ba_2;
    }
    public void setBa_2(String ba_2) {
        this.ba_2 = ba_2;
    }

    public String getBa_3() {
        return ba_3;
    }
    public void setBa_3(String ba_3) {
        this.ba_3 = ba_3;
    }

    public String getBa_4() {
        return ba_4;
    }
    public void setBa_4(String ba_4) {
        this.ba_4 = ba_4;
    }

    public String getBa_5() {
        return ba_5;
    }
    public void setBa_5(String ba_5) {
        this.ba_5 = ba_5;
    }

    public String getBa_6() {
        return ba_6;
    }
    public void setBa_6(String ba_6) {
        this.ba_6 = ba_6;
    }

    public String getIh_1() {
        return ih_1;
    }
    public void setIh_1(String ih_1) {
        this.ih_1 = ih_1;
    }

    public String getIh_2() {
        return ih_2;
    }
    public void setIh_2(String ih_2) {
        this.ih_2 = ih_2;
    }

    public String getIh_3() {
        return ih_3;
    }
    public void setIh_3(String ih_3) {
        this.ih_3 = ih_3;
    }

    public String getIh_4() {
        return ih_4;
    }
    public void setIh_4(String ih_4) {
        this.ih_4 = ih_4;
    }

    public String getIh_5() {
        return ih_5;
    }
    public void setIh_5(String ih_5) {
        this.ih_5 = ih_5;
    }

    public String getIh_6() {
        return ih_6;
    }
    public void setIh_6(String ih_6) {
        this.ih_6 = ih_6;
    }

    public String getObjective() {
        return objective;
    }
    public void setObjective(String objective) {
        this.objective = objective;
    }

    public String getDegree_1() {
        return degree_1;
    }
    public void setDegree_1(String degree_1) {
        this.degree_1 = degree_1;
    }

    public String getAffiliate_1() {
        return affiliate_1;
    }
    public void setAffiliate_1(String affiliate_1) {
        this.affiliate_1 = affiliate_1;
    }

    public String getInstitute_1() {
        return institute_1;
    }
    public void setInstitute_1(String institute_1) {
        this.institute_1 = institute_1;
    }

    public String getScore_1() {
        return score_1;
    }
    public void setScore_1(String score_1) {
        this.score_1 = score_1;
    }

    public String getSession_1() {
        return session_1;
    }
    public void setSession_1(String session_1) {
        this.session_1 = session_1;
    }

    public String getDegree_2() {
        return degree_2;
    }
    public void setDegree_2(String degree_2) {
        this.degree_2 = degree_2;
    }

    public String getAffiliate_2() {
        return affiliate_2;
    }
    public void setAffiliate_2(String affiliate_2) {
        this.affiliate_2 = affiliate_2;
    }

    public String getInstitute_2() {
        return institute_2;
    }
    public void setInstitute_2(String institute_2) {
        this.institute_2 = institute_2;
    }

    public String getScore_2() {
        return score_2;
    }
    public void setScore_2(String score_2) {
        this.score_2 = score_2;
    }

    public String getSession_2() {
        return session_2;
    }
    public void setSession_2(String session_2) {
        this.session_2 = session_2;
    }

    public String getDegree_3() {
        return degree_3;
    }
    public void setDegree_3(String degree_3) {
        this.degree_3 = degree_3;
    }

    public String getAffiliate_3() {
        return affiliate_3;
    }
    public void setAffiliate_3(String affiliate_3) {
        this.affiliate_3 = affiliate_3;
    }

    public String getInstitute_3() {
        return institute_3;
    }
    public void setInstitute_3(String institute_3) {
        this.institute_3 = institute_3;
    }

    public String getScore_3() {
        return score_3;
    }
    public void setScore_3(String score_3) {
        this.score_3 = score_3;
    }

    public String getSession_3() {
        return session_3;
    }
    public void setSession_3(String session_3) {
        this.session_3 = session_3;
    }

    public String getDegree_4() {
        return degree_4;
    }
    public void setDegree_4(String degree_4) {
        this.degree_4 = degree_4;
    }

    public String getAffiliate_4() {
        return affiliate_4;
    }
    public void setAffiliate_4(String affiliate_4) {
        this.affiliate_4 = affiliate_4;
    }

    public String getInstitute_4() {
        return institute_4;
    }
    public void setInstitute_4(String institute_4) {
        this.institute_4 = institute_4;
    }

    public String getScore_4() {
        return score_4;
    }
    public void setScore_4(String score_4) {
        this.score_4 = score_4;
    }

    public String getSession_4() {
        return session_4;
    }
    public void setSession_4(String session_4) {
        this.session_4 = session_4;
    }

    public String getDegree_5() {
        return degree_5;
    }
    public void setDegree_5(String degree_5) {
        this.degree_5 = degree_5;
    }

    public String getAffiliate_5() {
        return affiliate_5;
    }
    public void setAffiliate_5(String affiliate_5) {
        this.affiliate_5 = affiliate_5;
    }

    public String getInstitute_5() {
        return institute_5;
    }
    public void setInstitute_5(String institute_5) {
        this.institute_5 = institute_5;
    }

    public String getScore_5() {
        return score_5;
    }
    public void setScore_5(String score_5) {
        this.score_5 = score_5;
    }

    public String getSession_5() {
        return session_5;
    }
    public void setSession_5(String session_5) {
        this.session_5 = session_5;
    }

    public String getDegree_6() {
        return degree_6;
    }
    public void setDegree_6(String degree_6) {
        this.degree_6 = degree_6;
    }

    public String getAffiliate_6() {
        return affiliate_6;
    }
    public void setAffiliate_6(String affiliate_6) {
        this.affiliate_6 = affiliate_6;
    }

    public String getInstitute_6() {
        return institute_6;
    }
    public void setInstitute_6(String institute_6) {
        this.institute_6 = institute_6;
    }

    public String getScore_6() {
        return score_6;
    }
    public void setScore_6(String score_6) {
        this.score_6 = score_6;
    }

    public String getSession_6() {
        return session_6;
    }
    public void setSession_6(String session_6) {
        this.session_6 = session_6;
    }

    public String getCertificate_1() {
        return certificate_1;
    }
    public void setCertificate_1(String certificate_1) {
        this.certificate_1 = certificate_1;
    }

    public String getCertificate_2() {
        return certificate_2;
    }
    public void setCertificate_2(String certificate_2) {
        this.certificate_2 = certificate_2;
    }

    public String getCertificate_3() {
        return certificate_3;
    }
    public void setCertificate_3(String certificate_3) {
        this.certificate_3 = certificate_3;
    }

    public String getCertificate_4() {
        return certificate_4;
    }
    public void setCertificate_4(String certificate_4) {
        this.certificate_4 = certificate_4;
    }

    public String getCertificate_5() {
        return certificate_5;
    }
    public void setCertificate_5(String certificate_5) {
        this.certificate_5 = certificate_5;
    }

    public String getCertificate_6() {
        return certificate_6;
    }
    public void setCertificate_6(String certificate_6) {
        this.certificate_6 = certificate_6;
    }

    public String getWorkexperience() {
        return workexperience;
    }
    public void setWorkexperience(String workexperience) {
        this.workexperience = workexperience;
    }

    public String getProject_1() {
        return project_1;
    }
    public void setProject_1(String project_1) {
        this.project_1 = project_1;
    }

    public String getProjectdate_1() {
        return projectdate_1;
    }
    public void setProjectdate_1(String projectdate_1) {
        this.projectdate_1 = projectdate_1;
    }

    public String getWork_1() {
        return work_1;
    }
    public void setWork_1(String work_1) {
        this.work_1 = work_1;
    }

    public String getWorklink_1() {
        return worklink_1;
    }
    public void setWorklink_1(String worklink_1) {
        this.worklink_1 = worklink_1;
    }

    public String getProject_2() {
        return project_2;
    }
    public void setProject_2(String project_2) {
        this.project_2 = project_2;
    }

    public String getProjectdate_2() {
        return projectdate_2;
    }
    public void setProjectdate_2(String projectdate_2) {
        this.projectdate_2 = projectdate_2;
    }

    public String getWork_2() {
        return work_2;
    }
    public void setWork_2(String work_2) {
        this.work_2 = work_2;
    }

    public String getWorklink_2() {
        return worklink_2;
    }
    public void setWorklink_2(String worklink_2) {
        this.worklink_2 = worklink_2;
    }

    public String getProject_3() {
        return project_3;
    }
    public void setProject_3(String project_3) {
        this.project_3 = project_3;
    }

    public String getProjectdate_3() {
        return projectdate_3;
    }
    public void setProjectdate_3(String projectdate_3) {
        this.projectdate_3 = projectdate_3;
    }

    public String getWork_3() {
        return work_3;
    }
    public void setWork_3(String work_3) {
        this.work_3 = work_3;
    }

    public String getWorklink_3() {
        return worklink_3;
    }
    public void setWorklink_3(String worklink_3) {
        this.worklink_3 = worklink_3;
    }

    public String getProject_4() {
        return project_4;
    }
    public void setProject_4(String project_4) {
        this.project_4 = project_4;
    }

    public String getProjectdate_4() {
        return projectdate_4;
    }
    public void setProjectdate_4(String projectdate_4) {
        this.projectdate_4 = projectdate_4;
    }

    public String getWork_4() {
        return work_4;
    }
    public void setWork_4(String work_4) {
        this.work_4 = work_4;
    }

    public String getWorklink_4() {
        return worklink_4;
    }
    public void setWorklink_4(String worklink_4) {
        this.worklink_4 = worklink_4;
    }

    public String getProject_5() {
        return project_5;
    }
    public void setProject_5(String project_5) {
        this.project_5 = project_5;
    }

    public String getProjectdate_5() {
        return projectdate_5;
    }
    public void setProjectdate_5(String projectdate_5) {
        this.projectdate_5 = projectdate_5;
    }

    public String getWork_5() {
        return work_5;
    }
    public void setWork_5(String work_5) {
        this.work_5 = work_5;
    }

    public String getWorklink_5() {
        return worklink_5;
    }
    public void setWorklink_5(String worklink_5) {
        this.worklink_5 = worklink_5;
    }

    public String getProject_6() {
        return project_6;
    }
    public void setProject_6(String project_6) {
        this.project_6 = project_6;
    }

    public String getProjectdate_6() {
        return projectdate_6;
    }
    public void setProjectdate_6(String projectdate_6) {
        this.projectdate_6 = projectdate_6;
    }

    public String getWork_6() {
        return work_6;
    }
    public void setWork_6(String work_6) {
        this.work_6 = work_6;
    }

    public String getWorklink_6() {
        return worklink_6;
    }
    public void setWorklink_6(String worklink_6) {
        this.worklink_6 = worklink_6;
    }

    public String getProject_7() {
        return project_7;
    }
    public void setProject_7(String project_7) {
        this.project_7 = project_7;
    }

    public String getProjectdate_7() {
        return projectdate_7;
    }
    public void setProjectdate_7(String projectdate_7) {
        this.projectdate_7 = projectdate_7;
    }

    public String getWork_7() {
        return work_7;
    }
    public void setWork_7(String work_7) {
        this.work_7 = work_7;
    }

    public String getWorklink_7() {
        return worklink_7;
    }
    public void setWorklink_7(String worklink_7) {
        this.worklink_7 = worklink_7;
    }

    public String getLinkedin() {
        return linkedin;
    }
    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getFacebook() {
        return facebook;
    }
    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }
    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getInstagram() {
        return instagram;
    }
    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public String getVisibility() {
        return visibility;
    }
    public void setVisibility(String visibility) {
        this.visibility = visibility;
    }

    public String getV_msg() {
        return v_msg;
    }
    public void setV_msg(String v_msg) {
        this.v_msg = v_msg;
    }

    public String getV_date() {
        return v_date;
    }
    public void setV_date(String v_date) {
        this.v_date = v_date;
    }
    
}