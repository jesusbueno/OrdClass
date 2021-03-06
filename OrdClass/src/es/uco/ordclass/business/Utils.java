package es.uco.ordclass.business;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Clase que almacena funciones ?tiles para el correcto funcionamiento del
 * sistema
 * 
 * @author Jes?s Bueno Ruiz
 *
 */
public class Utils {

	/**
	 * Funci?n que env?a un email a un administrador cuando un usuario realiza una
	 * sugerencia
	 * 
	 * @param asunto: asunto del mensaje
	 * @param cuerpo: cuerpo del mensaje
	 * @param admin:  administrador al que se le env?a el correo
	 * @return true si se env?a correctamente, false si no se env?a correctamente
	 */
	public static boolean sendEmail(String asunto, String cuerpo, String admin) {
		boolean result = true;

		String sender = "ordclass.issues";
		String receiver = admin;
		String key = "sogctkbxzedzkern";

		Properties prop = System.getProperties();

		prop.put("mail.smtp.host", "smtp.gmail.com"); // Servidor SMTP de Google
		prop.put("mail.smtp.user", sender); // Remitente
		prop.put("mail.smtp.clave", key); // Clave de la cuenta
		prop.put("mail.smtp.auth", "true"); // Autentificaci?n mediante usuario y clave
		prop.put("mail.smtp.starttls.enable", "true"); // Conexi?n de manera segura
		prop.put("mail.smtp.port", "587"); // Puerto seguro SMTP

		Session session = Session.getDefaultInstance(prop);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(sender));
			message.addRecipients(Message.RecipientType.TO, receiver);
			message.setSubject("OrdClass App Issue: " + asunto);
			message.setText(cuerpo);

			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", sender, key);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (MessagingException me) {
			me.printStackTrace(); // Si se produce un error
			return false;
		}

		return result;
	}

	/**
	 * Funci?n que da formato al cuerpo del email que se env?a a un administrador
	 * 
	 * @param name:    nombre del remitente
	 * @param surname: apellidos del remitente
	 * @param email:   email del remitente
	 * @param concept: asunto del mensaje
	 * @param cuerpo:  cuerpo del mensaje
	 * @return cuerpo con formato
	 */
	public static String createBody(String name, String surname, String email, String concept, String cuerpo) {
		String body = "";

		System.out.println("YHola");

		body = "Sender details:\n Name: " + name + ".\n Surname: " + surname + ".\n Email: " + email + "\n\nConcept: "
				+ concept + "\n\n Suggestion details: \n\n" + cuerpo + "\n\n";
		System.out.println("body");
		return body;
	}
}
