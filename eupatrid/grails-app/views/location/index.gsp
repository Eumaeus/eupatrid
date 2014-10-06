
<%@ page import="edu.furman.classics.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-location" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="locationLabel" title="${message(code: 'location.locationLabel.label', default: 'Location Label')}" />
					
						<g:sortableColumn property="pleiadesUrn" title="${message(code: 'location.pleiadesUrn.label', default: 'Pleiades Urn')}" />
					
						<th><g:message code="location.person.label" default="Person" /></th>
					
						<g:sortableColumn property="locationType" title="${message(code: 'location.locationType.label', default: 'Location Type')}" />
					
						<g:sortableColumn property="ctsUrn" title="${message(code: 'location.ctsUrn.label', default: 'Cts Urn')}" />
					
						<th><g:message code="location.editor.label" default="Editor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${locationInstanceList}" status="i" var="locationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "locationLabel")}</g:link></td>
					
						<td>${fieldValue(bean: locationInstance, field: "pleiadesUrn")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "person")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "locationType")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "ctsUrn")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "editor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${locationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
