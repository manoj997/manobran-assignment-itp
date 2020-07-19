
import static java.lang.System.out;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

public class SSLEmail 
{
    public boolean sendMail(String email,String body,String msg)
    {
	final String fromEmail = "manobranenterprises@gmail.com"; //requires valid gmail id
	final String password = "manobranEnter@2018";
		
	out.println("SSLEmail Start");
	Properties props = new Properties();
	props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
	props.put("mail.smtp.socketFactory.port", "465"); //SSL Port
	props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory"); //SSL Factory Class
	props.put("mail.smtp.auth", "true"); //Enabling SMTP Authentication
	props.put("mail.smtp.port", "465"); //SMTP Port
	
	Authenticator auth = new Authenticator() 
        {
            //override the getPasswordAuthentication method
            protected PasswordAuthentication getPasswordAuthentication() 
            {
		return new PasswordAuthentication(fromEmail, password);
            }
	};
		
	Session session = Session.getDefaultInstance(props, auth);
	out.println("Session created");
        EmailUtil e = new EmailUtil();
        
        if(e.sendEmail(session, email, body, msg) == true)
        {
            return true;
        }
        else
        {
            return false;
        }

	//EmailUtil.sendAttachmentEmail(session, toEmail,"SSLEmail Testing Subject with Attachment", "SSLEmail Testing Body with Attachment");

	//EmailUtil.sendImageEmail(session, toEmail,"SSLEmail Testing Subject with Image", "SSLEmail Testing Body with Image");
       
    }
}