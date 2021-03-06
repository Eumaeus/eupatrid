
<%@ page import="edu.furman.classics.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
				<g:sortableColumn property="citeUrn" title="${message(code: 'person.personName.label', default: 'URN')}" />
	
						<g:sortableColumn property="personName" title="${message(code: 'person.personName.label', default: 'Person Name')}" />
					
						<g:sortableColumn property="ctsUrn" title="${message(code: 'person.ctsUrn.label', default: 'Cts Urn')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'person.notes.label', default: 'Notes')}" />
					
						<th><g:message code="person.editor.label" default="Editor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: personInstance, field: "citeUrn")}</td>
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "personName")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "ctsUrn")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "editor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
