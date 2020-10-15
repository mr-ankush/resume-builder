package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contact;
import myconnection.MyCon;

public class ContactDAO 
{
    // sign up
    public boolean sendrequest(Contact C)
    {
        try 
        {
            Connection con = null;
            PreparedStatement ps = null;
            String sql;
            con = MyCon.getConnection();
            sql = "insert into "
                    // table predonor
                    + "user_contact"
                    // field start
                    + "("
                    // fields
                    + "req_id,name,email,mobile,message,date,day"
                    // field close
                    + ") "
                    // values
                    + "values(?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            // data
            ps.setString(1,C.getReq_id());
            ps.setString(2,C.getName());
            ps.setString(3,C.getEmail());
            ps.setString(4,C.getMobile());
            ps.setString(5,C.getMessage());
            ps.setString(6,C.getDate());
            ps.setString(7,C.getDay());
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
