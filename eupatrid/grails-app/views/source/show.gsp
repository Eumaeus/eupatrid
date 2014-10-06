
<%@ page import="edu.furman.classics.Source" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'source.label', default: 'Source')}" />
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
		<div id="show-source" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list source">
			
				<g:if test="${sourceInstance?.workUrn}">
				<li class="fieldcontain">
					<span id="workUrn-label" class="property-label"><g:message code="source.workUrn.label" default="Work Urn" /></span>
					
						<span class="property-value" aria-labelledby="workUrn-label"><g:fieldValue bean="${sourceInstance}" field="workUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sourceInstance?.label}">
				<li class="fieldcontain">
					<span id="label-label" class="property-label"><g:message code="source.label.label" default="Label" /></span>
					
						<span class="property-value" aria-labelledby="label-label"><g:fieldValue bean="${sourceInstance}" field="label"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sourceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sourceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
