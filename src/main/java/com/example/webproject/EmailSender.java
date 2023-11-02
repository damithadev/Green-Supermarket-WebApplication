package com.example.webproject;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Authenticator;

public class EmailSender {
    public static void sendEmail(String recipientEmail, String subject, String messageBody) throws Exception {
        // Configure email properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com"); // Replace with your SMTP server address
        properties.put("mail.smtp.port", "587"); // Replace with your SMTP port
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true"); // For TLS

        // Create an email session
        Session session = Session.getInstance(properties, new Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication("techpulselk@gmail.com", "ksqkaclwruuduxol"); // Replace with your email and password
            }
        });

        // Create a message
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("techpulselk@gmail.com")); // Replace with your email
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
        message.setSubject(subject);
        message.setText(messageBody);

        // Send the message
        Transport.send(message);
    }
}
