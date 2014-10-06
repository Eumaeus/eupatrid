
<%@ page import="edu.furman.classics.Relation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'relation.label', default: 'Relation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-relation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="relation.fromPerson.label" default="From Person" /></th>
					
						<g:sortableColumn property="relationType" title="${message(code: 'relation.relationType.label', default: 'Relation Type')}" />
					
						<th><g:message code="relation.toPerson.label" default="To Person" /></th>
					
						<g:sortableColumn property="ctsUrn" title="${message(code: 'relation.ctsUrn.label', default: 'Cts Urn')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'relation.notes.label', default: 'Notes')}" />
					
						<th><g:message code="relation.editor.label" default="Editor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${relationInstanceList}" status="i" var="relationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${relationInstance.id}">${fieldValue(bean: relationInstance, field: "fromPerson")}</g:link></td>
					
						<td>${fieldValue(bean: relationInstance, field: "relationType")}</td>
					
						<td>${fieldValue(bean: relationInstance, field: "toPerson")}</td>
					
						<td>${fieldValue(bean: relationInstance, field: "ctsUrn")}</td>
					
						<td>${fieldValue(bean: relationInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: relationInstance, field: "editor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${relationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
