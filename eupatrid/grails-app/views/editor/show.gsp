
<%@ page import="edu.furman.classics.Editor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'editor.label', default: 'Editor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-editor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list editor">
			
				<g:if test="${editorInstance?.editorId}">
				<li class="fieldcontain">
					<span id="editorId-label" class="property-label"><g:message code="editor.editorId.label" default="Editor Id" /></span>
					
						<span class="property-value" aria-labelledby="editorId-label"><g:fieldValue bean="${editorInstance}" field="editorId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${editorInstance?.fullName}">
				<li class="fieldcontain">
					<span id="fullName-label" class="property-label"><g:message code="editor.fullName.label" default="Full Name" /></span>
					
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${editorInstance}" field="fullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${editorInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="editor.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${editorInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${editorInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="editor.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${editorInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:editorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${editorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
