<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="container">
	<h3>BREVE DESCRIPCIÓN/RESUMEN DEL PROYECTO</h3>
	<hr>
	<div class="row">
		<div class="col-sm-12">
			Qué se investiga, por qué, cuándo, cómo...
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica0" id="nuevo-proy-textarea" cols="1996" rows="8"
					style="width: 100%; padding: 5px;" placeholder="${biomedica0}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<h3>DESCRIPCIÓN DEL TRABAJO DE CAMPO</h3>
	<hr>
	<!-- Input Field Template -->
	<div class="row">
		<div class="col-sm-12">
			Descripción de los principales objetivos que se quieren alcanzar con el uso de muestras de origen humano.
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica1" id="nuevo-proy-textarea" cols="1996" rows="8"
					style="width: 100%; padding: 5px;" placeholder="${biomedica1}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Breve descripción de la metodología que se aplicará al trabajo de campo.
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica2" id="nuevo-proy-textarea" cols="1996" rows="8"
					style="width: 100%; padding: 5px;" placeholder="${biomedica2}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			¿Afecta el estudio a Mujeres gestantes o en periodo de lactancia, Menores, personas incapaces de expresar su
			consentimiento, grupos étnicos o sociales específico?
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica3" id="nuevo-proy-textarea" cols="1996" rows="4" style="width: 100%; padding: 5px;"
					placeholder="${biomedica3}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<h3>ORIGEN DE LAS MUESTRAS</h3>
	<hr>
	<!-- Input Field Template -->
	<div class="row">
		<div class="col-sm-12">
			Si la experimentación se realiza en una institución sanitaria, titular de las muestras, sin salida de las mismas,
			especifique y aporte el Certificado del Comité de Ética de la Investigación de la Institución de que se trate
			aprobando dicha experimentación
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica4" id="nuevo-proy-textarea" cols="1996" rows="4"
					style="width: 100%; padding: 5px;" placeholder="${biomedica4}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Si esta experimentación se realiza en un Centro de la UPM, empleando muestras donadas por alguna institución
			sanitaria, especifique y aporte el Certificado del Comité de Ética de la Investigación de la Institución de que se
			trate aprobando explícitamente la cesión y utilización de muestras en el proyecto:
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica5" id="nuevo-proy-textarea" cols="1996" rows="4"
					style="width: 100%; padding: 5px;" placeholder="${biomedica5}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Si en el proyecto se emplean muestras procedentes de Bancos de muestras biológicas, especifique y aporte el
			Certificado del Comité de Ética del Banco aprobando explícitamente mediante un ACUERDO DE CESIÓN, la transferencia
			y utilización de las muestras en el proyecto.
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica6" id="nuevo-proy-textarea" cols="1996" rows="4"
					style="width: 100%; padding: 5px;" placeholder="${biomedica6}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Si en el Proyecto se emplean preembriones, embriones humanos o se obtienen células troncales humanas, indíquelo.
			En este caso el proyecto deberá ser evaluado por el Comité de Garantías del ISCIII, de forma independiente a la
			evaluación del Comité de Ética de la UPM.
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica7" id="nuevo-proy-textarea" cols="1996" rows="2"
					style="width: 100%; padding: 5px;" placeholder="${biomedica7}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Si en el proyecto está previsto la intervención en humanos que incluya toma de nuevas muestras, especifique:
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica8}">
					<input class="form-check-input" name="biomedica8" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica8" type="checkbox"  disabled>
				</c:otherwise>				
			</c:choose>
			<label class="form-check-label" for="biomedica">Se solicitará formalmente el consentimiento a las personas
					participantes.</label>	
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica9}">
					<input class="form-check-input" name="biomedica9" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica9" type="checkbox" disabled>
				</c:otherwise>	
			</c:choose>
				<label class="form-check-label" for="biomedica">Los sujetos participantes disponen de suficiente información
					sobre el estudio.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica10}">
					<input class="form-check-input" name="biomedica10" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica10" type="checkbox" disabled>
				</c:otherwise>	
			</c:choose>
				<label class="form-check-label" for="biomedica">Acuerdo de transferencia de muestras o tejidos
					humanos.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica11}">
					<input class="form-check-input" name="biomedica11" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica11" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Documento de cesión.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica12}">
					<input class="form-check-input" name="biomedica12" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica12" type="checkbox" disabled>
				</c:otherwise>				
			</c:choose>
			<label class="form-check-label" for="biomedica">Cuenta con un seguro que cubra los posibles daños, en caso
					afirmativo indique compañía y condiciones de la póliza.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica13}">
					<input class="form-check-input" name="biomedica13" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica13" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Se realizan pruebas de tipo genético.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica14}">
					<input class="form-check-input" name="biomedica14" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica14" type="checkbox" disabled>
				</c:otherwise>				
			</c:choose>
			<label class="form-check-label" for="biomedica">Se les informará de que su participación es voluntaria y
					libre, así como de que pueden retirarse en todo momento.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica15}">
					<input class="form-check-input" name="biomedica15" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica15" type="checkbox" disabled>
				</c:otherwise>
				
			</c:choose>
			<label class="form-check-label" for="biomedica">Se dará a conocer el contacto del comité de ética a todos los
					participantes (<a href="mailto:secretaria.adjunto.vinvestigacion@upm.es">secretaria.adjunto.vinvestigacion@upm.es</a>).</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12 justify-content-between">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica16}">
					<input class="form-check-input" name="biomedica16" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica16" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Se respetará la confidencialidad.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			Se respetará el anonimato. La identidad no será relevada si no es bajo consentimiento explícito o bien en el
			caso de que los datos sean públicos, y se informará a los participantes de cómo se respetará. Explicitar el
			procedimiento estipulado para salvaguardar el anonimato y la confidencialidad.
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica17" id="nuevo-proy-textarea" cols="1996" rows="4"
					style="width: 100%; padding: 5px;" placeholder="${biomedica17}" disabled></textarea>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-12">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica18" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica18" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Una vez finalizado el proyecto está previsto informar de los
					resultados obtenidos a los participantes del mismo.</label>
			</div>
		</div>
	</div>
	<br>
	<h3>DESTINO Y CUSTODIA DE LAS MUESTRAS</h3>
	<hr>
	<!-- Input Field Template -->
	<div class="row">
		<div class="col-sm-12">
			Indique el destino de las muestras a la finalizacion del estudio:
		</div>
		<c:if test="${biomedica19 == 'destruccion'}">
			<div class="col-sm-12 col-md-4">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" checked disabled>
					<label class="form-check-label" for="biomedica">Destrucción.</label>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" disabled>
					<label class="form-check-label" for="biomedica">Incorporación a una colección registrada. Nombre de la
						colección.</label>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" disabled>
					<label class="form-check-label" for="biomedica">Incorporación al Biobanco UPM, si es posible.</label>
				</div>
			</div>
		</c:if>
		<c:if test="${biomedica19 == 'coleccion'}">
			<div class="col-sm-12 col-md-4">
				
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" disabled>
					<label class="form-check-label" for="biomedica">Destrucción.</label>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" checked disabled>
					<label class="form-check-label" for="biomedica">Incorporación a una colección registrada. Nombre de la
						colección.</label>
				</div>
				<div class="form-check form-check-inline" style="margin: 10px 0;">
					<textarea name="biomedica21" id="nuevo-proy-textarea" cols="1996" rows="1"
						style="width: 100%; padding: 5px;" placeholder="${biomedica21}" disabled></textarea>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" disabled>
					<label class="form-check-label" for="biomedica">Incorporación al Biobanco UPM, si es posible.</label>
				</div>
			</div>
		</c:if>
		<c:if test="${biomedica19 == 'biobanco'}">
			<div class="col-sm-12 col-md-4">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" value="destruccion" disabled>
					<label class="form-check-label" for="biomedica">Destrucción.</label>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" disabled>
					<label class="form-check-label" for="biomedica">Incorporación a una colección registrada. Nombre de la
						colección.</label>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="form-check form-check-inline">
					<input class="form-check-input" name="biomedica19" type="radio" checked disabled>
					<label class="form-check-label" for="biomedica">Incorporación al Biobanco UPM, si es posible.</label>
				</div>
			</div>
		</c:if>
	</div>
	<div class="row">
		<div class="col-sm-12">
			¿Está previsto un plan para el tratamiento, la custodia y la conservación de Las muestras recogidas en el
			trabajo de campo? En caso afirmativo, realice una breve descripción de ese tratamiento:
			<div class="form-check form-check-inline" style="margin: 10px 0;">
				<textarea name="biomedica23" id="nuevo-proy-textarea" cols="1996" rows="4"
					style="width: 100%; padding: 5px;" placeholder="${biomedica23}" disabled></textarea>
			</div>
		</div>
	</div>
	<h3>CONTESTE SI:</h3>
	<hr>
	<!-- Input Field Template -->
	<div class="row">
		<div class="col-sm-12 col-md-8">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica24" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica24" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Se ofrecen incentivos o compensaciones a quien
						participa.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica25" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica25" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Se garantiza la integridad y dignidad de las personas que
						participan como sujetos.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica26" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica26" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Las acciones sobre las personas que participan en la
						experimentación están supervisadas por un médico u otro profesional de la salud competente y cualificado
						apropiadamente.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica27" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica27" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">El personal que participa en los procedimientos posee la
						titulación y tiene la formación adecuada para llevar a cabo las tareas que se les encomienda.</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-12">
			<div class="form-check form-check-inline">
			<c:choose>
				<c:when test="${not empty biomedica18}">
					<input class="form-check-input" name="biomedica28" type="checkbox" checked disabled>
				</c:when>
				<c:otherwise>
					<input class="form-check-input" name="biomedica28" type="checkbox" disabled>
				</c:otherwise>
			</c:choose>
			<label class="form-check-label" for="biomedica">Poseen instalaciones idóneas para llevar a cabo los diseños
						experimentales.</label>
			</div>
		</div>
	</div>
	<br>
</div>