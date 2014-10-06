<%@ page import="edu.furman.classics.WorkVersion" %>



<div class="fieldcontain ${hasErrors(bean: workVersionInstance, field: 'ctsUrn', 'error')} required">
	<label for="ctsUrn">
		<g:message code="workVersion.ctsUrn.label" default="Cts Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ctsUrn" pattern="${workVersionInstance.constraints.ctsUrn.matches}" required="" value="${workVersionInstance?.ctsUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workVersionInstance, field: 'versionType', 'error')} required">
	<label for="versionType">
		<g:message code="workVersion.versionType.label" default="Version Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="versionType" from="${workVersionInstance.constraints.versionType.inList}" required="" value="${workVersionInstance?.versionType}" valueMessagePrefix="workVersion.versionType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workVersionInstance, field: 'label', 'error')} required">
	<label for="label">
		<g:message code="workVersion.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="label" required="" value="${workVersionInstance?.label}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workVersionInstance, field: 'ctsWork', 'error')} required">
	<label for="ctsWork">
		<g:message code="workVersion.ctsWork.label" default="Cts Work" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ctsWork" name="ctsWork.id" from="${edu.furman.classics.Source.list()}" optionKey="id" required="" value="${workVersionInstance?.ctsWork?.id}" class="many-to-one"/>

</div>

