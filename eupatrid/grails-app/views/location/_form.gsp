<%@ page import="edu.furman.classics.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationLabel', 'error')} required">
	<label for="locationLabel">
		<g:message code="location.locationLabel.label" default="Location Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locationLabel" required="" value="${locationInstance?.locationLabel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'pleiadesUrn', 'error')} required">
	<label for="pleiadesUrn">
		<g:message code="location.pleiadesUrn.label" default="Pleiades Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pleiadesUrn" required="" value="${locationInstance?.pleiadesUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="location.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${edu.furman.classics.Person.list()}" optionKey="id" required="" value="${locationInstance?.person?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationType', 'error')} required">
	<label for="locationType">
		<g:message code="location.locationType.label" default="Location Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="locationType" from="${locationInstance.constraints.locationType.inList}" required="" value="${locationInstance?.locationType}" valueMessagePrefix="location.locationType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'ctsUrn', 'error')} required">
	<label for="ctsUrn">
		<g:message code="location.ctsUrn.label" default="Cts Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ctsUrn" pattern="${locationInstance.constraints.ctsUrn.matches}" required="" value="${locationInstance?.ctsUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'editor', 'error')} required">
	<label for="editor">
		<g:message code="location.editor.label" default="Editor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="editor" name="editor.id" from="${edu.furman.classics.Editor.list()}" optionKey="id" required="" value="${locationInstance?.editor?.id}" class="many-to-one"/>

</div>

