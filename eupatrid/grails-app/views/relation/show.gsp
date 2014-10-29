
<%@ page import="edu.furman.classics.Relation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'relation.label', default: 'Relation')}" />
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
		<div id="show-relation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list relation">
			
				<g:if test="${relationInstance?.citeUrn}">
				<li class="fieldcontain">
					<span id="citeUrn-label" class="property-label"><g:message code="relation.citeUrn.label" default="URN" /></span>
					
						<span class="property-value" aria-labelledby="fromPerson-label"><g:link controller="person" action="show" id="${relationInstance?.fromPerson?.id}">${relationInstance?.fromPerson?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

				<g:if test="${relationInstance?.fromPerson}">
				<li class="fieldcontain">
					<span id="fromPerson-label" class="property-label"><g:message code="relation.fromPerson.label" default="From Person" /></span>
					
						<span class="property-value" aria-labelledby="fromPerson-label"><g:link controller="person" action="show" id="${relationInstance?.fromPerson?.id}">${relationInstance?.fromPerson?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${relationInstance?.relationType}">
				<li class="fieldcontain">
					<span id="relationType-label" class="property-label"><g:message code="relation.relationType.label" default="Relation Type" /></span>
					
						<span class="property-value" aria-labelledby="relationType-label"><g:fieldValue bean="${relationInstance}" field="relationType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${relationInstance?.toPerson}">
				<li class="fieldcontain">
					<span id="toPerson-label" class="property-label"><g:message code="relation.toPerson.label" default="To Person" /></span>
					
						<span class="property-value" aria-labelledby="toPerson-label"><g:link controller="person" action="show" id="${relationInstance?.toPerson?.id}">${relationInstance?.toPerson?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${relationInstance?.ctsUrn}">
				<li class="fieldcontain">
					<span id="ctsUrn-label" class="property-label"><g:message code="relation.ctsUrn.label" default="Cts Urn" /></span>
					
						<span class="property-value" aria-labelledby="ctsUrn-label"><g:fieldValue bean="${relationInstance}" field="ctsUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${relationInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="relation.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${relationInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${relationInstance?.editor}">
				<li class="fieldcontain">
					<span id="editor-label" class="property-label"><g:message code="relation.editor.label" default="Editor" /></span>
					
						<span class="property-value" aria-labelledby="editor-label"><g:link controller="editor" action="show" id="${relationInstance?.editor?.id}">${relationInstance?.editor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:relationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${relationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
