
<%@ page import="edu.furman.classics.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-location" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list location">
			
				<g:if test="${locationInstance?.locationLabel}">
				<li class="fieldcontain">
					<span id="locationLabel-label" class="property-label"><g:message code="location.locationLabel.label" default="Location Label" /></span>
					
						<span class="property-value" aria-labelledby="locationLabel-label"><g:fieldValue bean="${locationInstance}" field="locationLabel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.pleiadesUrn}">
				<li class="fieldcontain">
					<span id="pleiadesUrn-label" class="property-label"><g:message code="location.pleiadesUrn.label" default="Pleiades Urn" /></span>
					
						<span class="property-value" aria-labelledby="pleiadesUrn-label"><g:fieldValue bean="${locationInstance}" field="pleiadesUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="location.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${locationInstance?.person?.id}">${locationInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.locationType}">
				<li class="fieldcontain">
					<span id="locationType-label" class="property-label"><g:message code="location.locationType.label" default="Location Type" /></span>
					
						<span class="property-value" aria-labelledby="locationType-label"><g:fieldValue bean="${locationInstance}" field="locationType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.ctsUrn}">
				<li class="fieldcontain">
					<span id="ctsUrn-label" class="property-label"><g:message code="location.ctsUrn.label" default="Cts Urn" /></span>
					
						<span class="property-value" aria-labelledby="ctsUrn-label"><g:fieldValue bean="${locationInstance}" field="ctsUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.editor}">
				<li class="fieldcontain">
					<span id="editor-label" class="property-label"><g:message code="location.editor.label" default="Editor" /></span>
					
						<span class="property-value" aria-labelledby="editor-label"><g:link controller="editor" action="show" id="${locationInstance?.editor?.id}">${locationInstance?.editor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:locationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${locationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
