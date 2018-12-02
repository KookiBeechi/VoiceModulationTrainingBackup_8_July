package helper;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

  public static void main(String[] args) {

		Properties props = new Properties();
		//props.put("mail.smtp.host", "localhost");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.starttls.enable", "true");
	/*	props.setProperty("mail.smtp.user", "mesaurabhsharma91@gmail.com");
		props.setProperty("mail.smtp.password", "saurabhkota1!A");*/
		props.setProperty("mail.smtp.auth", "true"); 
		

		try {
			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			    protected PasswordAuthentication getPasswordAuthentication() {
			        return new PasswordAuthentication("mesaurabhsharma91@gmail.com", "saurabhkota1!A");
			    }
			});
			session.setDebug(true);

			MimeMessage msg = new MimeMessage(session);
			msg.setSubject("Test Mail");
			msg.setText("This is an automated mail genrated by System.\nThanks,\nJavaXp.com");

			msg.setFrom(new InternetAddress("mesaurabhsharma91@gmail.com"));

			msg.addRecipient(Message.RecipientType.TO, new InternetAddress("mesaurabhsharma91@gmail.com"));

			msg.addRecipient(Message.RecipientType.CC, new InternetAddress("mesaurabhsharma91@gmail.com"));

			msg.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect();

			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();

		} catch (Exception ex) {
			System.out.println("Exception occured");
			ex.printStackTrace();
		}

	}

}