package es.upm.dit.isst.gdpr.servlets;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.shiro.crypto.hash.Sha256Hash;

import es.upm.dit.isst.gdpr.dao.AnotacionDAO;
import es.upm.dit.isst.gdpr.dao.AnotacionDAOImplementation;
import es.upm.dit.isst.gdpr.dao.NotificacionDAOImplementation;
import es.upm.dit.isst.gdpr.dao.SolicitudDAO;
import es.upm.dit.isst.gdpr.dao.SolicitudDAOImplementation;
import es.upm.dit.isst.gdpr.model.Anotacion;
import es.upm.dit.isst.gdpr.model.Notificacion;
import es.upm.dit.isst.gdpr.model.Solicitud;

/**
 * Servlet implementation class NuevaMemoriaServlet
 */
@WebServlet("/NuevaMemoriaServlet")
@MultipartConfig
public class NuevaMemoriaServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		SolicitudDAO sdao = SolicitudDAOImplementation.getInstance();
		AnotacionDAO adao = AnotacionDAOImplementation.getInstance();
		String titulo = req.getParameter("titulo").toString();
		Part filePart = req.getPart("file");
		InputStream fileContent = filePart.getInputStream();
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		byte[] buffer = new byte[10240];

		for (int length = 0; (length = fileContent.read(buffer)) > 0;)
			output.write(buffer, 0, length);
		Solicitud solicitud = sdao.read(titulo);
		solicitud.setHmac(new Sha256Hash(output.toByteArray()).toString());
		solicitud.setInvestigacion(output.toByteArray());
		solicitud.setEstado(1);
		sdao.update(solicitud);

		ArrayList<Anotacion> anotaciones = (ArrayList<Anotacion>) adao.readAll();
		ArrayList<Anotacion> misAnotaciones = new ArrayList<Anotacion>();
		for (Anotacion anotacion : anotaciones) {
			if (anotacion.getSolicitud().getTitulo().equals(titulo)) {
				misAnotaciones.add(anotacion);
			}
		}
		for (Anotacion anotacion : misAnotaciones) {
			if (!anotacion.isAtendida()) {
				anotacion.setAtendida(true);
				adao.update(anotacion);
			}
		}

		Notificacion notificacion = new Notificacion();
		String email = solicitud.getMiembroCDE().getEmail();
		String asunto = "Se realizaron modificaciones sobre un proyecto.";
		notificacion.setTipo("Aportacion de info");
		notificacion.setAsunto(asunto);
		String cuerpo = "Se ha resubido la memoria de la solicitud " + solicitud.getTitulo();
		notificacion.setContenido(cuerpo);
		notificacion.setSolicitud(solicitud);
		notificacion.setUsuario(solicitud.getMiembroCDE());
		NotificacionDAOImplementation.getInstance().create(notificacion);

		EmailHandler automail = EmailHandler.getInstance();
		automail.sendEmail(email, asunto, cuerpo);

		resp.sendRedirect(req.getContextPath() + "/InvestigadorOverview");

	}

}
