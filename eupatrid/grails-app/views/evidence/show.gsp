
<%@ page import="edu.furman.classics.Evidence" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evidence.label', default: 'Evidence')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evidence" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evidence" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evidence">
			
				<g:if test="${evidenceInstance?.objectUrn}">
				<li class="fieldcontain">
					<span id="objectUrn-label" class="property-label"><g:message code="evidence.objectUrn.label" default="Object Urn" /></span>
					
						<span class="property-value" aria-labelledby="objectUrn-label"><g:fieldValue bean="${evidenceInstance}" field="objectUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evidenceInstance?.ctsUrn}">
				<li class="fieldcontain">
					<span id="ctsUrn-label" class="property-label"><g:message code="evidence.ctsUrn.label" default="Cts Urn" /></span>
					
						<span class="property-value" aria-labelledby="ctsUrn-label"><g:fieldValue bean="${evidenceInstance}" field="ctsUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evidenceInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="evidence.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${evidenceInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${evidenceInstance?.editor}">
				<li class="fieldcontain">
					<span id="editor-label" class="property-label"><g:message code="evidence.editor.label" default="Editor" /></span>
					
						<span class="property-value" aria-labelledby="editor-label"><g:link controller="editor" action="show" id="${evidenceInstance?.editor?.id}">${evidenceInstance?.editor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:evidenceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${evidenceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
