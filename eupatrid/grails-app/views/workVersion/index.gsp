
<%@ page import="edu.furman.classics.WorkVersion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'workVersion.label', default: 'WorkVersion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-workVersion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ctsUrn" title="${message(code: 'workVersion.ctsUrn.label', default: 'Cts Urn')}" />
					
						<g:sortableColumn property="versionType" title="${message(code: 'workVersion.versionType.label', default: 'Version Type')}" />
					
						<g:sortableColumn property="label" title="${message(code: 'workVersion.label.label', default: 'Label')}" />
					
						<th><g:message code="workVersion.ctsWork.label" default="Cts Work" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${workVersionInstanceList}" status="i" var="workVersionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${workVersionInstance.id}">${fieldValue(bean: workVersionInstance, field: "ctsUrn")}</g:link></td>
					
						<td>${fieldValue(bean: workVersionInstance, field: "versionType")}</td>
					
						<td>${fieldValue(bean: workVersionInstance, field: "label")}</td>
					
						<td>${fieldValue(bean: workVersionInstance, field: "ctsWork")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${workVersionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
