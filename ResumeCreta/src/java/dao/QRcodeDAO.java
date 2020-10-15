package dao;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Profile;
import model.Qr;
import myconnection.MyCon;

public class QRcodeDAO 
{
    public void generateQR(String qr_id)
    {
        try 
        {
            String qrCodeData = "http://www.resumecreta.com:8084/ResumeCreta/profile?cv="+qr_id;
            String filePath = "C:/Users/Lenovo/Desktop/ResumeCreta/web/image_qr/"+qr_id+".png";
            String charset = "UTF-8"; // or "ISO-8859-1"
            Map < EncodeHintType, ErrorCorrectionLevel > hintMap = new HashMap < EncodeHintType, ErrorCorrectionLevel > ();
            hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
            BitMatrix matrix = new MultiFormatWriter().encode(
                new String(qrCodeData.getBytes(charset), charset),
                BarcodeFormat.QR_CODE, 200, 200, hintMap);
            MatrixToImageWriter.writeToFile(matrix, filePath.substring(filePath
                .lastIndexOf('.') + 1), new File(filePath));
            //System.out.println("QR Code image created successfully!");
        }
        catch (Exception ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    // qr code entry
    public boolean insertQR(Qr Q)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into "
                    // table predonor
                    + "user_qr"
                    // field start
                    + "("
                    // fields
                    + "qr_id,qr_status,qr_url"
                    // field close
                    + ") "
                    // values
                    + "values(?,?,?)";
            ps = con.prepareStatement(sql);
            // data
            ps.setString(1,Q.getQr_id());
            ps.setString(2,Q.getQr_status());
            ps.setString(3,Q.getQr_url());
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
    // update qr_id & qr_url
    public boolean updateQr_id(Qr Q)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "user_qr "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "qr_id=?,qr_url=? "
                    // field close
                    + "where "
                    // values
                    + "qr_username=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,Q.getQr_id());
            ps.setString(2,Q.getQr_url());
            // update data
            ps.setString(3,Q.getQr_username());
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
    // update qr_username
    public boolean updateQr_username(Qr Q)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "user_qr "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "qr_username=? "
                    // field close
                    + "where "
                    // values
                    + "qr_id=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,Q.getQr_username());
            // update data
            ps.setString(2,Q.getQr_id());
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
    // update qr_status
    public boolean updateQr_status(Qr Q)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "update "
                    // table predonor
                    + "user_qr "
                    // field start
                    + "set "
                    // fields
                    // objective detail
                    + "qr_status=? "
                    // field close
                    + "where "
                    // values
                    + "qr_id=?";
            ps = con.prepareStatement(sql);
            // data
            // objective data
            ps.setString(1,Q.getQr_status());
            // update data
            ps.setString(2,Q.getQr_id());
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
    // search Qr data by qr_id
    public Qr searchQr_record(String qr_id) // String mobile is replaced by String qr_id
    {
        Qr Q = new Qr();
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql;
            con = MyCon.getConnection();
            sql = "Select * from user_qr where qr_id=?";
            ps = con.prepareStatement(sql);
            ps.setString(1,qr_id);
            rs = ps.executeQuery();
            if(rs.next())
            {
                // login data
                Q.setQr_id(rs.getString(1));
                Q.setQr_status(rs.getString(2));
                Q.setQr_url(rs.getString(3));
                Q.setQr_username(rs.getString(4));
            }
            else
                Q=null;
        }
        catch (SQLException ex) 
        {
            Logger.getLogger(ProfileDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Q;
    }
    // delete qr data
    public boolean deleteQr_data(String qr_id)
    {
        try 
        {
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            con=MyCon.getConnection();
            Profile P =new Profile();
            String sql;
            sql="delete from user_qr where qr_id=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,qr_id);
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