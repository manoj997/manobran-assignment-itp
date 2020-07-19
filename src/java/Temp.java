/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Arrays;
import java.sql.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

/**
 *
 * @author DELL
 */
public class Temp {
    
    String user="manobranenterprises@gmail.com";
    String pw="manobranEnter@2018";
    String to,sub,msg=null;
    public Temp(String to,String sub, String msg) {
    
        this.to=to;
        this.sub=sub;
        this.msg=msg;
    }
    
    public void sendMail(){
        Properties props = new Properties();
     props.put("mail.smtp.auth",true);
     props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");		
        props.put("mail.smtp.port", "587");
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pw);
            //return new PasswordAuthentication("ishanksen@gmail.com", "fbg+149mghimym27!pl");
            }
});
        
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);
            
            Transport.send(message);
            System.out.println("message sent successfully");
            
        }
        catch (MessagingException ex) {
            //System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
        
        
    }
}
