
<%@ page import="edu.furman.classics.WorkVersion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'workVersion.label', default: 'WorkVersion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-workVersion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-workVersion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list workVersion">
			
				<g:if test="${workVersionInstance?.ctsUrn}">
				<li class="fieldcontain">
					<span id="ctsUrn-label" class="property-label"><g:message code="workVersion.ctsUrn.label" default="Cts Urn" /></span>
					
						<span class="property-value" aria-labelledby="ctsUrn-label"><g:fieldValue bean="${workVersionInstance}" field="ctsUrn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workVersionInstance?.versionType}">
				<li class="fieldcontain">
					<span id="versionType-label" class="property-label"><g:message code="workVersion.versionType.label" default="Version Type" /></span>
					
						<span class="property-value" aria-labelledby="versionType-label"><g:fieldValue bean="${workVersionInstance}" field="versionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workVersionInstance?.label}">
				<li class="fieldcontain">
					<span id="label-label" class="property-label"><g:message code="workVersion.label.label" default="Label" /></span>
					
						<span class="property-value" aria-labelledby="label-label"><g:fieldValue bean="${workVersionInstance}" field="label"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${workVersionInstance?.ctsWork}">
				<li class="fieldcontain">
					<span id="ctsWork-label" class="property-label"><g:message code="workVersion.ctsWork.label" default="Cts Work" /></span>
					
						<span class="property-value" aria-labelledby="ctsWork-label"><g:link controller="source" action="show" id="${workVersionInstance?.ctsWork?.id}">${workVersionInstance?.ctsWork?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:workVersionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${workVersionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
