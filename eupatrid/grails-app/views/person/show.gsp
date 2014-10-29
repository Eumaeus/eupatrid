
<%@ page import="edu.furman.classics.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
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
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			<g:if test="${personInstance?.citeUrn}">
				<li class="fieldcontain">
					<span id="citeUrn-label" class="property-label"><g:message code="person.citeUrn.label" default="Cite Urn" /></span>
					
						<span class="property-value" aria-labelledby="citeUrn-label"><g:fieldValue bean="${personInstance}" field="citeUrn"/></span>
					
				</li>
				</g:if>
	
				<g:if test="${personInstance?.personName}">
				<li class="fieldcontain">
					<span id="personName-label" class="property-label"><g:message code="person.personName.label" default="Person Name" /></span>
					
						<span class="property-value" aria-labelledby="personName-label"><g:fieldValue bean="${personInstance}" field="personName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.ctsUrn}">
				<li class="fieldcontain">
					<span id="ctsUrn-label" class="property-label"><g:message code="person.ctsUrn.label" default="Cts Urn" /></span>
					
						<span class="property-value" aria-labelledby="ctsUrn-label"><g:fieldValue bean="${personInstance}" field="ctsUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="person.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${personInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.editor}">
				<li class="fieldcontain">
					<span id="editor-label" class="property-label"><g:message code="person.editor.label" default="Editor" /></span>
					
						<span class="property-value" aria-labelledby="editor-label"><g:link controller="editor" action="show" id="${personInstance?.editor?.id}">${personInstance?.editor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
