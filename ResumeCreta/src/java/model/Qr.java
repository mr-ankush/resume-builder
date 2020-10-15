package model;
public class Qr 
{
    String 
            qr_id,          // mobile number
            qr_status,      // (activate,deactivate)
            qr_url,         //  http://www.resumecreta.com:8084/ResumeCreta/profile?cv=[mobile]
            qr_username;    //  encrypted url / link
    
    public String getQr_id() {
        return qr_id;
    }
    public void setQr_id(String qr_id) {
        this.qr_id = qr_id;
    }

    public String getQr_status() {
        return qr_status;
    }
    public void setQr_status(String qr_status) {
        this.qr_status = qr_status;
    }

    public String getQr_url() {
        return qr_url;
    }
    public void setQr_url(String qr_url) {
        this.qr_url = qr_url;
    }

    public String getQr_username() {
        return qr_username;
    }
    public void setQr_username(String qr_username) {
        this.qr_username = qr_username;
    }

}
