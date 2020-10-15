package dao;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Profile;
import myconnection.MyCon;
public class ProfileDAO 
{
    // sign up
    public boolean insertsignupdata(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into "
                    // table predonor
                    + "profile"
                    // field start
                    + "("
                    // fields
                    + "isd,mobile,email,password,forgetque,forgetans"
                    // field close
                    + ") "
                    // values
                    + "values(?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            // data
            ps.setString(1,P.getIsd());
            ps.setString(2,P.getMobile());
            ps.setString(3,P.getEmail());
            ps.setString(4,P.getPassword());
            ps.setString(5,P.getForgetque());
            ps.setString(6,P.getForgetans());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // log in
    public static boolean checklogin(String mobile, String password)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from profile where mobile=? && password=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // search profile data
    public List<Profile> searchallprofiledata()
    {
        List<Profile> Mylist = new ArrayList<Profile>();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "select * from profile";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next())
            {
                Profile P = new Profile();
                // login data
                P.setIsd(rs.getString(1));
                P.setMobile(rs.getString(2));
                P.setEmail(rs.getString(3));
                P.setUsername(rs.getString(4));
                P.setPassword(rs.getString(5));
                P.setForgetque(rs.getString(6));
                P.setForgetans(rs.getString(7));
                // resume/cv data
                P.setCv_type(rs.getString(8));
                P.setCv_createdate(rs.getString(9));
                P.setCv_updatedate(rs.getString(10));
                P.setCv_theme(rs.getString(11));
                P.setCv_designation(rs.getString(12));
                // photo data
                P.setPhoto(rs.getBinaryStream(13));
                // personal data
                P.setFirstname(rs.getString(14));
                P.setLastname(rs.getString(15));
                P.setF_name(rs.getString(16));
                P.setM_name(rs.getString(17));
                P.setDob_date(rs.getString(18));
                P.setDob_month(rs.getString(19));
                P.setDob_year(rs.getString(20));
                P.setGender(rs.getString(21));
                P.setAltmobile(rs.getString(22));
                P.setLa_city(rs.getString(23));
                P.setLa_state(rs.getString(24));
                P.setLa_country(rs.getString(25));
                P.setNationality(rs.getString(26));
                P.setPermanentadd(rs.getString(27));
                // language known data
                P.setLk_1(rs.getString(28));
                P.setLkv_1(rs.getString(29));
                P.setLk_2(rs.getString(30));
                P.setLkv_2(rs.getString(31));
                P.setLk_3(rs.getString(32));
                P.setLkv_3(rs.getString(33));
                P.setLk_4(rs.getString(34));
                P.setLkv_4(rs.getString(35));
                P.setLk_5(rs.getString(36));
                P.setLkv_5(rs.getString(37));
                // skills
                P.setS_1(rs.getString(38));
                P.setSv_1(rs.getString(39));
                P.setS_2(rs.getString(40));
                P.setSv_2(rs.getString(41));
                P.setS_3(rs.getString(42));
                P.setSv_3(rs.getString(43));
                P.setS_4(rs.getString(44));
                P.setSv_4(rs.getString(45));
                P.setS_5(rs.getString(46));
                P.setSv_5(rs.getString(47));
                P.setS_6(rs.getString(48));
                P.setSv_6(rs.getString(49));
                P.setS_7(rs.getString(50));
                P.setSv_7(rs.getString(51));
                P.setS_8(rs.getString(52));
                P.setSv_8(rs.getString(53));
                P.setS_9(rs.getString(54));
                P.setSv_9(rs.getString(55));
                P.setS_10(rs.getString(56));
                P.setSv_10(rs.getString(57));
                P.setS_11(rs.getString(58));
                P.setSv_11(rs.getString(59));
                P.setS_12(rs.getString(60));
                P.setSv_12(rs.getString(61));
                P.setS_13(rs.getString(62));
                P.setSv_13(rs.getString(63));
                P.setS_14(rs.getString(64));
                P.setSv_14(rs.getString(65));
                P.setS_15(rs.getString(66));
                P.setSv_15(rs.getString(67));
                // behaviour & attitude data
                P.setBa_1(rs.getString(68));
                P.setBa_2(rs.getString(69));
                P.setBa_3(rs.getString(70));
                P.setBa_4(rs.getString(71));
                P.setBa_5(rs.getString(72));
                P.setBa_6(rs.getString(73));
                // interest & hobby data
                P.setIh_1(rs.getString(74));
                P.setIh_2(rs.getString(75));
                P.setIh_3(rs.getString(76));
                P.setIh_4(rs.getString(77));
                P.setIh_5(rs.getString(78));
                P.setIh_6(rs.getString(79));
                // objective data
                P.setObjective(rs.getString(80));
                // educational data
                P.setDegree_1(rs.getString(81));
                P.setAffiliate_1(rs.getString(82));
                P.setInstitute_1(rs.getString(83));
                P.setScore_1(rs.getString(84));
                P.setSession_1(rs.getString(85));
                P.setDegree_2(rs.getString(86));
                P.setAffiliate_2(rs.getString(87));
                P.setInstitute_2(rs.getString(88));
                P.setScore_2(rs.getString(89));
                P.setSession_2(rs.getString(90));
                P.setDegree_3(rs.getString(91));
                P.setAffiliate_3(rs.getString(92));
                P.setInstitute_3(rs.getString(93));
                P.setScore_3(rs.getString(94));
                P.setSession_3(rs.getString(95));
                P.setDegree_4(rs.getString(96));
                P.setAffiliate_4(rs.getString(97));
                P.setInstitute_4(rs.getString(98));
                P.setScore_4(rs.getString(99));
                P.setSession_4(rs.getString(100));
                P.setDegree_5(rs.getString(101));
                P.setAffiliate_5(rs.getString(102));
                P.setInstitute_5(rs.getString(103));
                P.setScore_5(rs.getString(104));
                P.setSession_5(rs.getString(105));
                P.setDegree_6(rs.getString(106));
                P.setAffiliate_6(rs.getString(107));
                P.setInstitute_6(rs.getString(108));
                P.setScore_6(rs.getString(109));
                P.setSession_6(rs.getString(110));
                // certificate
                P.setCertificate_1(rs.getString(111));
                P.setCertificate_2(rs.getString(112));
                P.setCertificate_3(rs.getString(113));
                P.setCertificate_4(rs.getString(114));
                P.setCertificate_5(rs.getString(115));
                P.setCertificate_6(rs.getString(116));
                // experience data
                P.setWorkexperience(rs.getString(117));
                P.setProject_1(rs.getString(118));
                P.setProjectdate_1(rs.getString(119));
                P.setWork_1(rs.getString(120));
                P.setWorklink_1(rs.getString(121));
                P.setProject_2(rs.getString(122));
                P.setProjectdate_2(rs.getString(123));
                P.setWork_2(rs.getString(124));
                P.setWorklink_2(rs.getString(125));
                P.setProject_3(rs.getString(126));
                P.setProjectdate_3(rs.getString(127));
                P.setWork_3(rs.getString(128));
                P.setWorklink_3(rs.getString(129));
                P.setProject_4(rs.getString(130));
                P.setProjectdate_4(rs.getString(131));
                P.setWork_4(rs.getString(132));
                P.setWorklink_4(rs.getString(133));
                P.setProject_5(rs.getString(134));
                P.setProjectdate_5(rs.getString(135));
                P.setWork_5(rs.getString(136));
                P.setWorklink_5(rs.getString(137));
                P.setProject_6(rs.getString(138));
                P.setProjectdate_6(rs.getString(139));
                P.setWork_6(rs.getString(140));
                P.setWorklink_6(rs.getString(141));
                P.setProject_7(rs.getString(142));
                P.setProjectdate_7(rs.getString(143));
                P.setWork_7(rs.getString(144));
                P.setWorklink_7(rs.getString(145));
                // social media link data
                P.setLinkedin(rs.getString(146));
                P.setTwitter(rs.getString(147));
                P.setFacebook(rs.getString(148));
                P.setInstagram(rs.getString(149));
                P.setVisibility(rs.getString(150));
                P.setV_msg(rs.getString(151));
                P.setV_date(rs.getString(152));
                // add in collection
                Mylist.add(P);
            }
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Mylist;
    }
    // Search profile-data by mobile
    public void retrievephotobymobile(String mobile)
    {
        Profile P = new Profile();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select mobile, photo, firstname from profile where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            rs = ps.executeQuery();
            String Mobile;
            Blob B;
            String Name;
            if(rs.next())
            {
                Mobile = rs.getString(1);
                B = rs.getBlob(2);
                Name = rs.getString(3);
                try 
                {
                    FileOutputStream fos = new FileOutputStream("C:/Users/Lenovo/Desktop/ResumeCreta/web/image/"+Mobile+"-"+Name+".png");
                    byte image[];
                    image=B.getBytes(1,(int)B.length());
                    try 
                    {
                        fos.write(image);
                    }
                    catch (IOException ex) 
                    {
                        Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                catch (FileNotFoundException ex) 
                {
                    Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
//    // old image deleted from folder
//    public void deleteimage(String filepath) 
//    {
//        File file = new File(filepath);
//        //boolean success = false;
//        if (file.isFile()) 
//        {
//            file.delete();
//        }
//    }
    // Search profile-data by mobile
    public Profile searchprofiledatabymobile(String mobile)
    {
        Profile P = new Profile();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from profile where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            rs = ps.executeQuery();
            if(rs.next())
            {
                // login data
                P.setIsd(rs.getString(1));
                P.setMobile(rs.getString(2));
                P.setEmail(rs.getString(3));
                P.setUsername(rs.getString(4));
                P.setPassword(rs.getString(5));
                P.setForgetque(rs.getString(6));
                P.setForgetans(rs.getString(7));
                // resume/cv data
                P.setCv_type(rs.getString(8));
                P.setCv_createdate(rs.getString(9));
                P.setCv_updatedate(rs.getString(10));
                P.setCv_theme(rs.getString(11));
                P.setCv_designation(rs.getString(12));
                // photo data
                P.setPhoto(rs.getBinaryStream(13));
                // personal data
                P.setFirstname(rs.getString(14));
                P.setLastname(rs.getString(15));
                P.setF_name(rs.getString(16));
                P.setM_name(rs.getString(17));
                P.setDob_date(rs.getString(18));
                P.setDob_month(rs.getString(19));
                P.setDob_year(rs.getString(20));
                P.setGender(rs.getString(21));
                P.setAltmobile(rs.getString(22));
                P.setLa_city(rs.getString(23));
                P.setLa_state(rs.getString(24));
                P.setLa_country(rs.getString(25));
                P.setNationality(rs.getString(26));
                P.setPermanentadd(rs.getString(27));
                // language known data
                P.setLk_1(rs.getString(28));
                P.setLkv_1(rs.getString(29));
                P.setLk_2(rs.getString(30));
                P.setLkv_2(rs.getString(31));
                P.setLk_3(rs.getString(32));
                P.setLkv_3(rs.getString(33));
                P.setLk_4(rs.getString(34));
                P.setLkv_4(rs.getString(35));
                P.setLk_5(rs.getString(36));
                P.setLkv_5(rs.getString(37));
                // skills
                P.setS_1(rs.getString(38));
                P.setSv_1(rs.getString(39));
                P.setS_2(rs.getString(40));
                P.setSv_2(rs.getString(41));
                P.setS_3(rs.getString(42));
                P.setSv_3(rs.getString(43));
                P.setS_4(rs.getString(44));
                P.setSv_4(rs.getString(45));
                P.setS_5(rs.getString(46));
                P.setSv_5(rs.getString(47));
                P.setS_6(rs.getString(48));
                P.setSv_6(rs.getString(49));
                P.setS_7(rs.getString(50));
                P.setSv_7(rs.getString(51));
                P.setS_8(rs.getString(52));
                P.setSv_8(rs.getString(53));
                P.setS_9(rs.getString(54));
                P.setSv_9(rs.getString(55));
                P.setS_10(rs.getString(56));
                P.setSv_10(rs.getString(57));
                P.setS_11(rs.getString(58));
                P.setSv_11(rs.getString(59));
                P.setS_12(rs.getString(60));
                P.setSv_12(rs.getString(61));
                P.setS_13(rs.getString(62));
                P.setSv_13(rs.getString(63));
                P.setS_14(rs.getString(64));
                P.setSv_14(rs.getString(65));
                P.setS_15(rs.getString(66));
                P.setSv_15(rs.getString(67));
                // behaviour & attitude data
                P.setBa_1(rs.getString(68));
                P.setBa_2(rs.getString(69));
                P.setBa_3(rs.getString(70));
                P.setBa_4(rs.getString(71));
                P.setBa_5(rs.getString(72));
                P.setBa_6(rs.getString(73));
                // interest & hobby data
                P.setIh_1(rs.getString(74));
                P.setIh_2(rs.getString(75));
                P.setIh_3(rs.getString(76));
                P.setIh_4(rs.getString(77));
                P.setIh_5(rs.getString(78));
                P.setIh_6(rs.getString(79));
                // objective data
                P.setObjective(rs.getString(80));
                // educational data
                P.setDegree_1(rs.getString(81));
                P.setAffiliate_1(rs.getString(82));
                P.setInstitute_1(rs.getString(83));
                P.setScore_1(rs.getString(84));
                P.setSession_1(rs.getString(85));
                P.setDegree_2(rs.getString(86));
                P.setAffiliate_2(rs.getString(87));
                P.setInstitute_2(rs.getString(88));
                P.setScore_2(rs.getString(89));
                P.setSession_2(rs.getString(90));
                P.setDegree_3(rs.getString(91));
                P.setAffiliate_3(rs.getString(92));
                P.setInstitute_3(rs.getString(93));
                P.setScore_3(rs.getString(94));
                P.setSession_3(rs.getString(95));
                P.setDegree_4(rs.getString(96));
                P.setAffiliate_4(rs.getString(97));
                P.setInstitute_4(rs.getString(98));
                P.setScore_4(rs.getString(99));
                P.setSession_4(rs.getString(100));
                P.setDegree_5(rs.getString(101));
                P.setAffiliate_5(rs.getString(102));
                P.setInstitute_5(rs.getString(103));
                P.setScore_5(rs.getString(104));
                P.setSession_5(rs.getString(105));
                P.setDegree_6(rs.getString(106));
                P.setAffiliate_6(rs.getString(107));
                P.setInstitute_6(rs.getString(108));
                P.setScore_6(rs.getString(109));
                P.setSession_6(rs.getString(110));
                // certificate
                P.setCertificate_1(rs.getString(111));
                P.setCertificate_2(rs.getString(112));
                P.setCertificate_3(rs.getString(113));
                P.setCertificate_4(rs.getString(114));
                P.setCertificate_5(rs.getString(115));
                P.setCertificate_6(rs.getString(116));
                // experience data
                P.setWorkexperience(rs.getString(117));
                P.setProject_1(rs.getString(118));
                P.setProjectdate_1(rs.getString(119));
                P.setWork_1(rs.getString(120));
                P.setWorklink_1(rs.getString(121));
                P.setProject_2(rs.getString(122));
                P.setProjectdate_2(rs.getString(123));
                P.setWork_2(rs.getString(124));
                P.setWorklink_2(rs.getString(125));
                P.setProject_3(rs.getString(126));
                P.setProjectdate_3(rs.getString(127));
                P.setWork_3(rs.getString(128));
                P.setWorklink_3(rs.getString(129));
                P.setProject_4(rs.getString(130));
                P.setProjectdate_4(rs.getString(131));
                P.setWork_4(rs.getString(132));
                P.setWorklink_4(rs.getString(133));
                P.setProject_5(rs.getString(134));
                P.setProjectdate_5(rs.getString(135));
                P.setWork_5(rs.getString(136));
                P.setWorklink_5(rs.getString(137));
                P.setProject_6(rs.getString(138));
                P.setProjectdate_6(rs.getString(139));
                P.setWork_6(rs.getString(140));
                P.setWorklink_6(rs.getString(141));
                P.setProject_7(rs.getString(142));
                P.setProjectdate_7(rs.getString(143));
                P.setWork_7(rs.getString(144));
                P.setWorklink_7(rs.getString(145));
                // social media link data
                P.setLinkedin(rs.getString(146));
                P.setTwitter(rs.getString(147));
                P.setFacebook(rs.getString(148));
                P.setInstagram(rs.getString(149));
                P.setVisibility(rs.getString(150));
                P.setV_msg(rs.getString(151));
                P.setV_date(rs.getString(152));
            }
            else
                P=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return P;
    }
    // Search profile-data by username
    public Profile searchprofiledatabyusername(String username)
    {
        Profile P = new Profile();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from profile where username=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,username);
            rs = ps.executeQuery();
            if(rs.next())
            {
                // login data
                P.setIsd(rs.getString(1));
                P.setMobile(rs.getString(2));
                P.setEmail(rs.getString(3));
                P.setUsername(rs.getString(4));
                P.setPassword(rs.getString(5));
                P.setForgetque(rs.getString(6));
                P.setForgetans(rs.getString(7));
                // resume/cv data
                P.setCv_type(rs.getString(8));
                P.setCv_createdate(rs.getString(9));
                P.setCv_updatedate(rs.getString(10));
                P.setCv_theme(rs.getString(11));
                P.setCv_designation(rs.getString(12));
                // photo data
                P.setPhoto(rs.getBinaryStream(13));
                // personal data
                P.setFirstname(rs.getString(14));
                P.setLastname(rs.getString(15));
                P.setF_name(rs.getString(16));
                P.setM_name(rs.getString(17));
                P.setDob_date(rs.getString(18));
                P.setDob_month(rs.getString(19));
                P.setDob_year(rs.getString(20));
                P.setGender(rs.getString(21));
                P.setAltmobile(rs.getString(22));
                P.setLa_city(rs.getString(23));
                P.setLa_state(rs.getString(24));
                P.setLa_country(rs.getString(25));
                P.setNationality(rs.getString(26));
                P.setPermanentadd(rs.getString(27));
                // language known data
                P.setLk_1(rs.getString(28));
                P.setLkv_1(rs.getString(29));
                P.setLk_2(rs.getString(30));
                P.setLkv_2(rs.getString(31));
                P.setLk_3(rs.getString(32));
                P.setLkv_3(rs.getString(33));
                P.setLk_4(rs.getString(34));
                P.setLkv_4(rs.getString(35));
                P.setLk_5(rs.getString(36));
                P.setLkv_5(rs.getString(37));
                // skills
                P.setS_1(rs.getString(38));
                P.setSv_1(rs.getString(39));
                P.setS_2(rs.getString(40));
                P.setSv_2(rs.getString(41));
                P.setS_3(rs.getString(42));
                P.setSv_3(rs.getString(43));
                P.setS_4(rs.getString(44));
                P.setSv_4(rs.getString(45));
                P.setS_5(rs.getString(46));
                P.setSv_5(rs.getString(47));
                P.setS_6(rs.getString(48));
                P.setSv_6(rs.getString(49));
                P.setS_7(rs.getString(50));
                P.setSv_7(rs.getString(51));
                P.setS_8(rs.getString(52));
                P.setSv_8(rs.getString(53));
                P.setS_9(rs.getString(54));
                P.setSv_9(rs.getString(55));
                P.setS_10(rs.getString(56));
                P.setSv_10(rs.getString(57));
                P.setS_11(rs.getString(58));
                P.setSv_11(rs.getString(59));
                P.setS_12(rs.getString(60));
                P.setSv_12(rs.getString(61));
                P.setS_13(rs.getString(62));
                P.setSv_13(rs.getString(63));
                P.setS_14(rs.getString(64));
                P.setSv_14(rs.getString(65));
                P.setS_15(rs.getString(66));
                P.setSv_15(rs.getString(67));
                // behaviour & attitude data
                P.setBa_1(rs.getString(68));
                P.setBa_2(rs.getString(69));
                P.setBa_3(rs.getString(70));
                P.setBa_4(rs.getString(71));
                P.setBa_5(rs.getString(72));
                P.setBa_6(rs.getString(73));
                // interest & hobby data
                P.setIh_1(rs.getString(74));
                P.setIh_2(rs.getString(75));
                P.setIh_3(rs.getString(76));
                P.setIh_4(rs.getString(77));
                P.setIh_5(rs.getString(78));
                P.setIh_6(rs.getString(79));
                // objective data
                P.setObjective(rs.getString(80));
                // educational data
                P.setDegree_1(rs.getString(81));
                P.setAffiliate_1(rs.getString(82));
                P.setInstitute_1(rs.getString(83));
                P.setScore_1(rs.getString(84));
                P.setSession_1(rs.getString(85));
                P.setDegree_2(rs.getString(86));
                P.setAffiliate_2(rs.getString(87));
                P.setInstitute_2(rs.getString(88));
                P.setScore_2(rs.getString(89));
                P.setSession_2(rs.getString(90));
                P.setDegree_3(rs.getString(91));
                P.setAffiliate_3(rs.getString(92));
                P.setInstitute_3(rs.getString(93));
                P.setScore_3(rs.getString(94));
                P.setSession_3(rs.getString(95));
                P.setDegree_4(rs.getString(96));
                P.setAffiliate_4(rs.getString(97));
                P.setInstitute_4(rs.getString(98));
                P.setScore_4(rs.getString(99));
                P.setSession_4(rs.getString(100));
                P.setDegree_5(rs.getString(101));
                P.setAffiliate_5(rs.getString(102));
                P.setInstitute_5(rs.getString(103));
                P.setScore_5(rs.getString(104));
                P.setSession_5(rs.getString(105));
                P.setDegree_6(rs.getString(106));
                P.setAffiliate_6(rs.getString(107));
                P.setInstitute_6(rs.getString(108));
                P.setScore_6(rs.getString(109));
                P.setSession_6(rs.getString(110));
                // certificate
                P.setCertificate_1(rs.getString(111));
                P.setCertificate_2(rs.getString(112));
                P.setCertificate_3(rs.getString(113));
                P.setCertificate_4(rs.getString(114));
                P.setCertificate_5(rs.getString(115));
                P.setCertificate_6(rs.getString(116));
                // experience data
                P.setWorkexperience(rs.getString(117));
                P.setProject_1(rs.getString(118));
                P.setProjectdate_1(rs.getString(119));
                P.setWork_1(rs.getString(120));
                P.setWorklink_1(rs.getString(121));
                P.setProject_2(rs.getString(122));
                P.setProjectdate_2(rs.getString(123));
                P.setWork_2(rs.getString(124));
                P.setWorklink_2(rs.getString(125));
                P.setProject_3(rs.getString(126));
                P.setProjectdate_3(rs.getString(127));
                P.setWork_3(rs.getString(128));
                P.setWorklink_3(rs.getString(129));
                P.setProject_4(rs.getString(130));
                P.setProjectdate_4(rs.getString(131));
                P.setWork_4(rs.getString(132));
                P.setWorklink_4(rs.getString(133));
                P.setProject_5(rs.getString(134));
                P.setProjectdate_5(rs.getString(135));
                P.setWork_5(rs.getString(136));
                P.setWorklink_5(rs.getString(137));
                P.setProject_6(rs.getString(138));
                P.setProjectdate_6(rs.getString(139));
                P.setWork_6(rs.getString(140));
                P.setWorklink_6(rs.getString(141));
                P.setProject_7(rs.getString(142));
                P.setProjectdate_7(rs.getString(143));
                P.setWork_7(rs.getString(144));
                P.setWorklink_7(rs.getString(145));
                // social media link data
                P.setLinkedin(rs.getString(146));
                P.setTwitter(rs.getString(147));
                P.setFacebook(rs.getString(148));
                P.setInstagram(rs.getString(149));
                P.setVisibility(rs.getString(150));
                P.setV_msg(rs.getString(151));
                P.setV_date(rs.getString(152));
            }
            else
                P=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return P;
    }
    // profile edit
    public boolean updateprofiledata(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // resume/cv detail
                    + "cv_type=?,cv_createdate=?,cv_updatedate=?,cv_theme=?,cv_designation=?,"
                    // photo detail
                    + "photo=?,"
                    // personal detail
                    + "firstname=?,lastname=?,f_name=?,m_name=?,"
                    + "dob_date=?,dob_month=?,dob_year=?,gender=?,altmobile=?,"
                    + "la_city=?,la_state=?,la_country=?,nationality=?,permanentadd=?,"
                    // language known detail
                    + "lk_1=?,lkv_1=?,lk_2=?,lkv_2=?,lk_3=?,lkv_3=?,lk_4=?,lkv_4=?,lk_5=?,lkv_5=?,"
                    // skills detail
                    + "s_1=?,sv_1=?,s_2=?,sv_2=?,s_3=?,sv_3=?,s_4=?,sv_4=?,s_5=?,sv_5=?,"
                    + "s_6=?,sv_6=?,s_7=?,sv_7=?,s_8=?,sv_8=?,s_9=?,sv_9=?,s_10=?,sv_10=?,"
                    + "s_11=?,sv_11=?,s_12=?,sv_12=?,s_13=?,sv_13=?,s_14=?,sv_14=?,s_15=?,sv_15=?,"
                    // behaviour & attitude detail
                    + "ba_1=?,ba_2=?,ba_3=?,ba_4=?,ba_5=?,ba_6=?,"
                    // interest & hobby detail
                    + "ih_1=?,ih_2=?,ih_3=?,ih_4=?,ih_5=?,ih_6=?,"
                    // objective detail
                    + "objective=?,"
                    // educational detail
                    + "degree_1=?,affiliate_1=?,institute_1=?,score_1=?,session_1=?,"
                    + "degree_2=?,affiliate_2=?,institute_2=?,score_2=?,session_2=?,"
                    + "degree_3=?,affiliate_3=?,institute_3=?,score_3=?,session_3=?,"
                    + "degree_4=?,affiliate_4=?,institute_4=?,score_4=?,session_4=?,"
                    + "degree_5=?,affiliate_5=?,institute_5=?,score_5=?,session_5=?,"
                    + "degree_6=?,affiliate_6=?,institute_6=?,score_6=?,session_6=?,"
                    // certificate detail
                    + "certificate_1=?,certificate_2=?,certificate_3=?,"
                    + "certificate_4=?,certificate_5=?,certificate_6=?,"
                    // experience
                    + "workexperience=?,"
                    + "project_1=?,projectdate_1=?,work_1=?,worklink_1=?,"
                    + "project_2=?,projectdate_2=?,work_2=?,worklink_2=?,"
                    + "project_3=?,projectdate_3=?,work_3=?,worklink_3=?,"
                    + "project_4=?,projectdate_4=?,work_4=?,worklink_4=?,"
                    + "project_5=?,projectdate_5=?,work_5=?,worklink_5=?,"
                    + "project_6=?,projectdate_6=?,work_6=?,worklink_6=?,"
                    + "project_7=?,projectdate_7=?,work_7=?,worklink_7=?,"
                    // social media link
                    + "linkedin=?,twitter=?,facebook=?,instagram=?,"
                    // visibility
                    + "visibility=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // resume/cv data
            ps.setString(1,P.getCv_type());
            ps.setString(2,P.getCv_createdate());
            ps.setString(3,P.getCv_updatedate());
            ps.setString(4,P.getCv_theme());
            ps.setString(5,P.getCv_designation());
            // photo data
            ps.setBlob(6,P.getPhoto());
            // personal data
            ps.setString(7,P.getFirstname());
            ps.setString(8,P.getLastname());
            ps.setString(9,P.getF_name());
            ps.setString(10,P.getM_name());
            ps.setString(11,P.getDob_date());
            ps.setString(12,P.getDob_month());
            ps.setString(13,P.getDob_year());
            ps.setString(14,P.getGender());
            ps.setString(15,P.getAltmobile());
            ps.setString(16,P.getLa_city());
            ps.setString(17,P.getLa_state());
            ps.setString(18,P.getLa_country());
            ps.setString(19,P.getNationality());
            ps.setString(20,P.getPermanentadd());
            // language known data
            ps.setString(21,P.getLk_1());
            ps.setString(22,P.getLkv_1());
            ps.setString(23,P.getLk_2());
            ps.setString(24,P.getLkv_2());
            ps.setString(25,P.getLk_3());
            ps.setString(26,P.getLkv_3());
            ps.setString(27,P.getLk_4());
            ps.setString(28,P.getLkv_4());
            ps.setString(29,P.getLk_5());
            ps.setString(30,P.getLkv_5());
            // skills data
            ps.setString(31,P.getS_1());
            ps.setString(32,P.getSv_1());
            ps.setString(33,P.getS_2());
            ps.setString(34,P.getSv_2());
            ps.setString(35,P.getS_3());
            ps.setString(36,P.getSv_3());
            ps.setString(37,P.getS_4());
            ps.setString(38,P.getSv_4());
            ps.setString(39,P.getS_5());
            ps.setString(40,P.getSv_5());
            ps.setString(41,P.getS_6());
            ps.setString(42,P.getSv_6());
            ps.setString(43,P.getS_7());
            ps.setString(44,P.getSv_7());
            ps.setString(45,P.getS_8());
            ps.setString(46,P.getSv_8());
            ps.setString(47,P.getS_9());
            ps.setString(48,P.getSv_9());
            ps.setString(49,P.getS_10());
            ps.setString(50,P.getSv_10());
            ps.setString(51,P.getS_11());
            ps.setString(52,P.getSv_11());
            ps.setString(53,P.getS_12());
            ps.setString(54,P.getSv_12());
            ps.setString(55,P.getS_13());
            ps.setString(56,P.getSv_13());
            ps.setString(57,P.getS_14());
            ps.setString(58,P.getSv_14());
            ps.setString(59,P.getS_15());
            ps.setString(60,P.getSv_15());
            // behaviour & attitude data
            ps.setString(61,P.getBa_1());
            ps.setString(62,P.getBa_2());
            ps.setString(63,P.getBa_3());
            ps.setString(64,P.getBa_4());
            ps.setString(65,P.getBa_5());
            ps.setString(66,P.getBa_6());
            // interest & hobby data
            ps.setString(67,P.getIh_1());
            ps.setString(68,P.getIh_2());
            ps.setString(69,P.getIh_3());
            ps.setString(70,P.getIh_4());
            ps.setString(71,P.getIh_5());
            ps.setString(72,P.getIh_6());
            // objective data
            ps.setString(73,P.getObjective());
            // educational data
            ps.setString(74,P.getDegree_1());
            ps.setString(75,P.getAffiliate_1());
            ps.setString(76,P.getInstitute_1());
            ps.setString(77,P.getScore_1());
            ps.setString(78,P.getSession_1());
            ps.setString(79,P.getDegree_2());
            ps.setString(80,P.getAffiliate_2());
            ps.setString(81,P.getInstitute_2());
            ps.setString(82,P.getScore_2());
            ps.setString(83,P.getSession_2());
            ps.setString(84,P.getDegree_3());
            ps.setString(85,P.getAffiliate_3());
            ps.setString(86,P.getInstitute_3());
            ps.setString(87,P.getScore_3());
            ps.setString(88,P.getSession_3());
            ps.setString(89,P.getDegree_4());
            ps.setString(90,P.getAffiliate_4());
            ps.setString(91,P.getInstitute_4());
            ps.setString(92,P.getScore_4());
            ps.setString(93,P.getSession_4());
            ps.setString(94,P.getDegree_5());
            ps.setString(95,P.getAffiliate_5());
            ps.setString(96,P.getInstitute_5());
            ps.setString(97,P.getScore_5());
            ps.setString(98,P.getSession_5());
            ps.setString(99,P.getDegree_6());
            ps.setString(100,P.getAffiliate_6());
            ps.setString(101,P.getInstitute_6());
            ps.setString(102,P.getScore_6());
            ps.setString(103,P.getSession_6());
            // certificate data
            ps.setString(104,P.getCertificate_1());
            ps.setString(105,P.getCertificate_2());
            ps.setString(106,P.getCertificate_3());
            ps.setString(107,P.getCertificate_4());
            ps.setString(108,P.getCertificate_5());
            ps.setString(109,P.getCertificate_6());
            // experience data
            ps.setString(110,P.getWorkexperience());
            ps.setString(111,P.getProject_1());
            ps.setString(112,P.getProjectdate_1());
            ps.setString(113,P.getWork_1());
            ps.setString(114,P.getWorklink_1());
            ps.setString(115,P.getProject_2());
            ps.setString(116,P.getProjectdate_2());
            ps.setString(117,P.getWork_2());
            ps.setString(118,P.getWorklink_2());
            ps.setString(119,P.getProject_3());
            ps.setString(120,P.getProjectdate_3());
            ps.setString(121,P.getWork_3());
            ps.setString(122,P.getWorklink_3());
            ps.setString(123,P.getProject_4());
            ps.setString(124,P.getProjectdate_4());
            ps.setString(125,P.getWork_4());
            ps.setString(126,P.getWorklink_4());
            ps.setString(127,P.getProject_5());
            ps.setString(128,P.getProjectdate_5());
            ps.setString(129,P.getWork_5());
            ps.setString(130,P.getWorklink_5());
            ps.setString(131,P.getProject_6());
            ps.setString(132,P.getProjectdate_6());
            ps.setString(133,P.getWork_6());
            ps.setString(134,P.getWorklink_6());
            ps.setString(135,P.getProject_7());
            ps.setString(136,P.getProjectdate_7());
            ps.setString(137,P.getWork_7());
            ps.setString(138,P.getWorklink_7());
            // social media link
            ps.setString(139,P.getLinkedin());
            ps.setString(140,P.getTwitter());
            ps.setString(141,P.getFacebook());
            ps.setString(142,P.getInstagram());
            ps.setString(143,P.getVisibility());
            // update data
            ps.setString(144,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update cv_detail
    public boolean updatecv_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // resume/cv detail
                    + "cv_type=?,cv_updatedate=?,cv_theme=?,cv_designation=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // resume/cv data
            ps.setString(1,P.getCv_type());
            ps.setString(2,P.getCv_updatedate());
            ps.setString(3,P.getCv_theme());
            ps.setString(4,P.getCv_designation());
            // update data
            ps.setString(5,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update photo_detail
    public boolean updatephoto_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // photo detail
                    + "photo=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // photo data
            ps.setBlob(1,P.getPhoto());
            // update data
            ps.setString(2,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // profile pd_detail
    public boolean updatepd_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // personal detail
                    + "firstname=?,lastname=?,f_name=?,m_name=?,"
                    + "dob_date=?,dob_month=?,dob_year=?,gender=?,altmobile=?,"
                    + "la_city=?,la_state=?,la_country=?,nationality=?,permanentadd=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // personal data
            ps.setString(1,P.getFirstname());
            ps.setString(2,P.getLastname());
            ps.setString(3,P.getF_name());
            ps.setString(4,P.getM_name());
            ps.setString(5,P.getDob_date());
            ps.setString(6,P.getDob_month());
            ps.setString(7,P.getDob_year());
            ps.setString(8,P.getGender());
            ps.setString(9,P.getAltmobile());
            ps.setString(10,P.getLa_city());
            ps.setString(11,P.getLa_state());
            ps.setString(12,P.getLa_country());
            ps.setString(13,P.getNationality());
            ps.setString(14,P.getPermanentadd());
            ps.setString(15,P.getCv_updatedate());
            // update data
            ps.setString(16,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update lk_detail
    public boolean updatelk_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // language known detail
                    + "lk_1=?,lk_2=?,lk_3=?,lk_4=?,lk_5=?,"
                    // language known detail
                    + "lkv_1=?,lkv_2=?,lkv_3=?,lkv_4=?,lkv_5=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // language known data
            ps.setString(1,P.getLk_1());
            ps.setString(2,P.getLk_2());
            ps.setString(3,P.getLk_3());
            ps.setString(4,P.getLk_4());
            ps.setString(5,P.getLk_5());
            ps.setString(6,P.getLkv_1());
            ps.setString(7,P.getLkv_2());
            ps.setString(8,P.getLkv_3());
            ps.setString(9,P.getLkv_4());
            ps.setString(10,P.getLkv_5());
            ps.setString(11,P.getCv_updatedate());
            // update data
            ps.setString(12,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update skills
    public boolean updates_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // skills detail
                    + "s_1=?,s_2=?,s_3=?,s_4=?,s_5=?,s_6=?,s_7=?,s_8=?,s_9=?,s_10=?,"
                    + "s_11=?,s_12=?,s_13=?,s_14=?,s_15=?,"
                    // skills percentage detail
                    + "sv_1=?,sv_2=?,sv_3=?,sv_4=?,sv_5=?,sv_6=?,sv_7=?,sv_8=?,sv_9=?,sv_10=?,"
                    + "sv_11=?,sv_12=?,sv_13=?,sv_14=?,sv_15=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // skills data
            ps.setString(1,P.getS_1());
            ps.setString(2,P.getS_2());
            ps.setString(3,P.getS_3());
            ps.setString(4,P.getS_4());
            ps.setString(5,P.getS_5());
            ps.setString(6,P.getS_6());
            ps.setString(7,P.getS_7());
            ps.setString(8,P.getS_8());
            ps.setString(9,P.getS_9());
            ps.setString(10,P.getS_10());
            ps.setString(11,P.getS_11());
            ps.setString(12,P.getS_12());
            ps.setString(13,P.getS_13());
            ps.setString(14,P.getS_14());
            ps.setString(15,P.getS_15());
            ps.setString(16,P.getSv_1());
            ps.setString(17,P.getSv_2());
            ps.setString(18,P.getSv_3());
            ps.setString(19,P.getSv_4());
            ps.setString(20,P.getSv_5());
            ps.setString(21,P.getSv_6());
            ps.setString(22,P.getSv_7());
            ps.setString(23,P.getSv_8());
            ps.setString(24,P.getSv_9());
            ps.setString(25,P.getSv_10());
            ps.setString(26,P.getSv_11());
            ps.setString(27,P.getSv_12());
            ps.setString(28,P.getSv_13());
            ps.setString(29,P.getSv_14());
            ps.setString(30,P.getSv_15());
            ps.setString(31,P.getCv_updatedate());
            // update data
            ps.setString(32,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update ba_detail
    public boolean updateba_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // behaviour & attitude detail
                    + "ba_1=?,ba_2=?,ba_3=?,ba_4=?,ba_5=?,ba_6=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // behaviour & attitude data
            ps.setString(1,P.getBa_1());
            ps.setString(2,P.getBa_2());
            ps.setString(3,P.getBa_3());
            ps.setString(4,P.getBa_4());
            ps.setString(5,P.getBa_5());
            ps.setString(6,P.getBa_6());
            ps.setString(7,P.getCv_updatedate());
            // update data
            ps.setString(8,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update ih_detail
    public boolean updateih_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // interest & hobby detail
                    + "ih_1=?,ih_2=?,ih_3=?,ih_4=?,ih_5=?,ih_6=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // interest & hobby data
            ps.setString(1,P.getIh_1());
            ps.setString(2,P.getIh_2());
            ps.setString(3,P.getIh_3());
            ps.setString(4,P.getIh_4());
            ps.setString(5,P.getIh_5());
            ps.setString(6,P.getIh_6());
            ps.setString(7,P.getCv_updatedate());
            // update data
            ps.setString(8,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update objective
    public boolean updateobj_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "objective=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,P.getObjective());
            ps.setString(2,P.getCv_updatedate());
            // update data
            ps.setString(3,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update edu_detail
    public boolean updateedu_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // educational detail
                    + "degree_1=?,affiliate_1=?,institute_1=?,score_1=?,session_1=?,"
                    + "degree_2=?,affiliate_2=?,institute_2=?,score_2=?,session_2=?,"
                    + "degree_3=?,affiliate_3=?,institute_3=?,score_3=?,session_3=?,"
                    + "degree_4=?,affiliate_4=?,institute_4=?,score_4=?,session_4=?,"
                    + "degree_5=?,affiliate_5=?,institute_5=?,score_5=?,session_5=?,"
                    + "degree_6=?,affiliate_6=?,institute_6=?,score_6=?,session_6=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // educational data
            ps.setString(1,P.getDegree_1());
            ps.setString(2,P.getAffiliate_1());
            ps.setString(3,P.getInstitute_1());
            ps.setString(4,P.getScore_1());
            ps.setString(5,P.getSession_1());
            ps.setString(6,P.getDegree_2());
            ps.setString(7,P.getAffiliate_2());
            ps.setString(8,P.getInstitute_2());
            ps.setString(9,P.getScore_2());
            ps.setString(10,P.getSession_2());
            ps.setString(11,P.getDegree_3());
            ps.setString(12,P.getAffiliate_3());
            ps.setString(13,P.getInstitute_3());
            ps.setString(14,P.getScore_3());
            ps.setString(15,P.getSession_3());
            ps.setString(16,P.getDegree_4());
            ps.setString(17,P.getAffiliate_4());
            ps.setString(18,P.getInstitute_4());
            ps.setString(19,P.getScore_4());
            ps.setString(20,P.getSession_4());
            ps.setString(21,P.getDegree_5());
            ps.setString(22,P.getAffiliate_5());
            ps.setString(23,P.getInstitute_5());
            ps.setString(24,P.getScore_5());
            ps.setString(25,P.getSession_5());
            ps.setString(26,P.getDegree_6());
            ps.setString(27,P.getAffiliate_6());
            ps.setString(28,P.getInstitute_6());
            ps.setString(29,P.getScore_6());
            ps.setString(30,P.getSession_6());
            ps.setString(31,P.getCv_updatedate());
            // update data
            ps.setString(32,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update cert_detail
    public boolean updatecert_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // certificate detail
                    + "certificate_1=?,certificate_2=?,certificate_3=?,"
                    + "certificate_4=?,certificate_5=?,certificate_6=?,cv_updatedate=? "

                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // certificate data
            ps.setString(1,P.getCertificate_1());
            ps.setString(2,P.getCertificate_2());
            ps.setString(3,P.getCertificate_3());
            ps.setString(4,P.getCertificate_4());
            ps.setString(5,P.getCertificate_5());
            ps.setString(6,P.getCertificate_6());
            ps.setString(7,P.getCv_updatedate());
            // update data
            ps.setString(8,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update experience
    public boolean updatework_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // experience
                    + "workexperience=?,"
                    + "project_1=?,projectdate_1=?,work_1=?,worklink_1=?,"
                    + "project_2=?,projectdate_2=?,work_2=?,worklink_2=?,"
                    + "project_3=?,projectdate_3=?,work_3=?,worklink_3=?,"
                    + "project_4=?,projectdate_4=?,work_4=?,worklink_4=?,"
                    + "project_5=?,projectdate_5=?,work_5=?,worklink_5=?,"
                    + "project_6=?,projectdate_6=?,work_6=?,worklink_6=?,"
                    + "project_7=?,projectdate_7=?,work_7=?,worklink_7=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // experience data
            ps.setString(1,P.getWorkexperience());
            ps.setString(2,P.getProject_1());
            ps.setString(3,P.getProjectdate_1());
            ps.setString(4,P.getWork_1());
            ps.setString(5,P.getWorklink_1());
            ps.setString(6,P.getProject_2());
            ps.setString(7,P.getProjectdate_2());
            ps.setString(8,P.getWork_2());
            ps.setString(9,P.getWorklink_2());
            ps.setString(10,P.getProject_3());
            ps.setString(11,P.getProjectdate_3());
            ps.setString(12,P.getWork_3());
            ps.setString(13,P.getWorklink_3());
            ps.setString(14,P.getProject_4());
            ps.setString(15,P.getProjectdate_4());
            ps.setString(16,P.getWork_4());
            ps.setString(17,P.getWorklink_4());
            ps.setString(18,P.getProject_5());
            ps.setString(19,P.getProjectdate_5());
            ps.setString(20,P.getWork_5());
            ps.setString(21,P.getWorklink_5());
            ps.setString(22,P.getProject_6());
            ps.setString(23,P.getProjectdate_6());
            ps.setString(24,P.getWork_6());
            ps.setString(25,P.getWorklink_6());
            ps.setString(26,P.getProject_7());
            ps.setString(27,P.getProjectdate_7());
            ps.setString(28,P.getWork_7());
            ps.setString(29,P.getWorklink_7());
            ps.setString(30,P.getCv_updatedate());
            // update data
            ps.setString(31,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update sml_detail
    public boolean updatesml_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // social media link
                    + "linkedin=?,twitter=?,facebook=?,instagram=?,cv_updatedate=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // social media link
            ps.setString(1,P.getLinkedin());
            ps.setString(2,P.getTwitter());
            ps.setString(3,P.getFacebook());
            ps.setString(4,P.getInstagram());
            ps.setString(5,P.getCv_updatedate());
            // update data
            ps.setString(6,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update vis_detail
    public boolean updatevis_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // visibility
                    + "visibility=?,v_msg=?,v_date=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            ps.setString(1,P.getVisibility());
            ps.setString(2,P.getV_msg());
            ps.setString(3,P.getV_date());
            // update data
            ps.setString(4,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update objective
    public boolean updateusername(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "username=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // usernane
            ps.setString(1,P.getUsername());
            // update data
            ps.setString(2,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update password
    public boolean updatepassword_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "password=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,P.getPassword());
            // update data
            ps.setString(2,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update passcode (que+ans)
    public boolean updatepasscode_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "forgetque=?,forgetans=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,P.getForgetque());
            ps.setString(2,P.getForgetans());
            // update data
            ps.setString(3,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update email
    public boolean updateemail_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "email=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,P.getEmail());
            // update data
            ps.setString(2,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // update mobile
    public boolean updatemobile_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "mobile=? "
                    // field close
                    + "where "
                    // values
                    + "username=? AND email=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,P.getMobile());
            // update data
            ps.setString(2,P.getUsername());
            ps.setString(3,P.getEmail());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // invalid user or not
    public static boolean checkuser(String cv) // String mobile variable is replaced with String cv
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from profile where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,cv);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // invalid user or not
    public static boolean checkurl(String r) // String mobile variable is replaced with String r
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            //Admin A = new Admin();
            String sql;
            con = MyCon.getConnection();
            sql = "select * from profile where username=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,r);
            rs = ps.executeQuery();
            if(rs.next())  
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // backup of user profile data
    public boolean backupuserdata (Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into profile_backup select * from profile where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,P.getMobile());
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // delete user profile data
    public boolean deleteuserdata(String mobile)
    {
        try 
        {
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            con=MyCon.getConnection();
            Profile P =new Profile();
            String sql;
            sql="delete from profile where mobile=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,mobile);
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // restore user profile data
    public boolean restoreuserdata (Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into profile select * from profile_backup where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,P.getMobile());
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // delete user profile data
    public boolean deleteuserbackupdata(String mobile)
    {
        try 
        {
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            con=MyCon.getConnection();
            Profile P =new Profile();
            String sql;
            sql="delete from profile_backup where mobile=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,mobile);
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // Search profile-backup data by mobile
    public Profile searchprofilebackupdatabymobile(String mobile)
    {
        Profile P = new Profile();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from profile_backup where mobile=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,mobile);
            rs = ps.executeQuery();
            if(rs.next())
            {
                // login data
                P.setIsd(rs.getString(1));
                P.setMobile(rs.getString(2));
                P.setEmail(rs.getString(3));
                P.setUsername(rs.getString(4));
                P.setPassword(rs.getString(5));
                P.setForgetque(rs.getString(6));
                P.setForgetans(rs.getString(7));
                // resume/cv data
                P.setCv_type(rs.getString(8));
                P.setCv_createdate(rs.getString(9));
                P.setCv_updatedate(rs.getString(10));
                P.setCv_theme(rs.getString(11));
                P.setCv_designation(rs.getString(12));
                // photo data
                P.setPhoto(rs.getBinaryStream(13));
                // personal data
                P.setFirstname(rs.getString(14));
                P.setLastname(rs.getString(15));
                P.setF_name(rs.getString(16));
                P.setM_name(rs.getString(17));
                P.setDob_date(rs.getString(18));
                P.setDob_month(rs.getString(19));
                P.setDob_year(rs.getString(20));
                P.setGender(rs.getString(21));
                P.setAltmobile(rs.getString(22));
                P.setLa_city(rs.getString(23));
                P.setLa_state(rs.getString(24));
                P.setLa_country(rs.getString(25));
                P.setNationality(rs.getString(26));
                P.setPermanentadd(rs.getString(27));
                // language known data
                P.setLk_1(rs.getString(28));
                P.setLkv_1(rs.getString(29));
                P.setLk_2(rs.getString(30));
                P.setLkv_2(rs.getString(31));
                P.setLk_3(rs.getString(32));
                P.setLkv_3(rs.getString(33));
                P.setLk_4(rs.getString(34));
                P.setLkv_4(rs.getString(35));
                P.setLk_5(rs.getString(36));
                P.setLkv_5(rs.getString(37));
                // skills
                P.setS_1(rs.getString(38));
                P.setSv_1(rs.getString(39));
                P.setS_2(rs.getString(40));
                P.setSv_2(rs.getString(41));
                P.setS_3(rs.getString(42));
                P.setSv_3(rs.getString(43));
                P.setS_4(rs.getString(44));
                P.setSv_4(rs.getString(45));
                P.setS_5(rs.getString(46));
                P.setSv_5(rs.getString(47));
                P.setS_6(rs.getString(48));
                P.setSv_6(rs.getString(49));
                P.setS_7(rs.getString(50));
                P.setSv_7(rs.getString(51));
                P.setS_8(rs.getString(52));
                P.setSv_8(rs.getString(53));
                P.setS_9(rs.getString(54));
                P.setSv_9(rs.getString(55));
                P.setS_10(rs.getString(56));
                P.setSv_10(rs.getString(57));
                P.setS_11(rs.getString(58));
                P.setSv_11(rs.getString(59));
                P.setS_12(rs.getString(60));
                P.setSv_12(rs.getString(61));
                P.setS_13(rs.getString(62));
                P.setSv_13(rs.getString(63));
                P.setS_14(rs.getString(64));
                P.setSv_14(rs.getString(65));
                P.setS_15(rs.getString(66));
                P.setSv_15(rs.getString(67));
                // behaviour & attitude data
                P.setBa_1(rs.getString(68));
                P.setBa_2(rs.getString(69));
                P.setBa_3(rs.getString(70));
                P.setBa_4(rs.getString(71));
                P.setBa_5(rs.getString(72));
                P.setBa_6(rs.getString(73));
                // interest & hobby data
                P.setIh_1(rs.getString(74));
                P.setIh_2(rs.getString(75));
                P.setIh_3(rs.getString(76));
                P.setIh_4(rs.getString(77));
                P.setIh_5(rs.getString(78));
                P.setIh_6(rs.getString(79));
                // objective data
                P.setObjective(rs.getString(80));
                // educational data
                P.setDegree_1(rs.getString(81));
                P.setAffiliate_1(rs.getString(82));
                P.setInstitute_1(rs.getString(83));
                P.setScore_1(rs.getString(84));
                P.setSession_1(rs.getString(85));
                P.setDegree_2(rs.getString(86));
                P.setAffiliate_2(rs.getString(87));
                P.setInstitute_2(rs.getString(88));
                P.setScore_2(rs.getString(89));
                P.setSession_2(rs.getString(90));
                P.setDegree_3(rs.getString(91));
                P.setAffiliate_3(rs.getString(92));
                P.setInstitute_3(rs.getString(93));
                P.setScore_3(rs.getString(94));
                P.setSession_3(rs.getString(95));
                P.setDegree_4(rs.getString(96));
                P.setAffiliate_4(rs.getString(97));
                P.setInstitute_4(rs.getString(98));
                P.setScore_4(rs.getString(99));
                P.setSession_4(rs.getString(100));
                P.setDegree_5(rs.getString(101));
                P.setAffiliate_5(rs.getString(102));
                P.setInstitute_5(rs.getString(103));
                P.setScore_5(rs.getString(104));
                P.setSession_5(rs.getString(105));
                P.setDegree_6(rs.getString(106));
                P.setAffiliate_6(rs.getString(107));
                P.setInstitute_6(rs.getString(108));
                P.setScore_6(rs.getString(109));
                P.setSession_6(rs.getString(100));
                // certificate
                P.setCertificate_1(rs.getString(111));
                P.setCertificate_2(rs.getString(112));
                P.setCertificate_3(rs.getString(113));
                P.setCertificate_4(rs.getString(114));
                P.setCertificate_5(rs.getString(115));
                P.setCertificate_6(rs.getString(116));
                // experience data
                P.setWorkexperience(rs.getString(117));
                P.setProject_1(rs.getString(118));
                P.setProjectdate_1(rs.getString(119));
                P.setWork_1(rs.getString(120));
                P.setWorklink_1(rs.getString(121));
                P.setProject_2(rs.getString(122));
                P.setProjectdate_2(rs.getString(123));
                P.setWork_2(rs.getString(124));
                P.setWorklink_2(rs.getString(125));
                P.setProject_3(rs.getString(126));
                P.setProjectdate_3(rs.getString(127));
                P.setWork_3(rs.getString(128));
                P.setWorklink_3(rs.getString(129));
                P.setProject_4(rs.getString(130));
                P.setProjectdate_4(rs.getString(131));
                P.setWork_4(rs.getString(132));
                P.setWorklink_4(rs.getString(133));
                P.setProject_5(rs.getString(134));
                P.setProjectdate_5(rs.getString(135));
                P.setWork_5(rs.getString(136));
                P.setWorklink_5(rs.getString(137));
                P.setProject_6(rs.getString(138));
                P.setProjectdate_6(rs.getString(139));
                P.setWork_6(rs.getString(140));
                P.setWorklink_6(rs.getString(141));
                P.setProject_7(rs.getString(142));
                P.setProjectdate_7(rs.getString(143));
                P.setWork_7(rs.getString(144));
                P.setWorklink_7(rs.getString(145));
                // social media link data
                P.setLinkedin(rs.getString(146));
                P.setTwitter(rs.getString(147));
                P.setFacebook(rs.getString(148));
                P.setInstagram(rs.getString(149));
                P.setVisibility(rs.getString(150));
                P.setV_msg(rs.getString(151));
                P.setV_date(rs.getString(152));
            }
            else
                P=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return P;
    }
    // update login_detail
    public boolean updatelogin_detail(Profile P)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "profile "
                    // field start
                    + "set "
                    // fields
                    // resume/cv detail
                    + "email=?,password=?,forgetque=?,forgetans=?,v_msg=?,v_date=? "
                    // field close
                    + "where "
                    // values
                    + "mobile=?";
            ps = con.prepareStatement(sql);
            // data
            // resume/cv data
            ps.setString(1,P.getEmail());
            ps.setString(2,P.getPassword());
            ps.setString(3,P.getForgetque());
            ps.setString(4,P.getForgetans());
            ps.setString(5,P.getV_msg());
            ps.setString(6,P.getV_date());
            // update data
            ps.setString(7,P.getMobile());
            // code execution
            if(ps.executeUpdate()>0)
                return true;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}