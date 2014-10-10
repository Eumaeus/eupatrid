
<%@ page import="edu.furman.classics.Editor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'editor.label', default: 'Editor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-editor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="editorId" title="${message(code: 'editor.editorId.label', default: 'Editor Id')}" />
					
						<g:sortableColumn property="fullName" title="${message(code: 'editor.fullName.label', default: 'Full Name')}" />
											
						<g:sortableColumn property="bio" title="${message(code: 'editor.bio.label', default: 'Bio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${editorInstanceList}" status="i" var="editorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${editorInstance.id}">${fieldValue(bean: editorInstance, field: "editorId")}</g:link></td>
					
						<td>${fieldValue(bean: editorInstance, field: "fullName")}</td>
					
						<td>${fieldValue(bean: editorInstance, field: "bio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${editorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
