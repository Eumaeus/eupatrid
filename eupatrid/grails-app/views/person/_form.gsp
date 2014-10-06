<%@ page import="edu.furman.classics.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'personName', 'error')} required">
	<label for="personName">
		<g:message code="person.personName.label" default="Person Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="personName" maxlength="250" required="" value="${personInstance?.personName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'ctsUrn', 'error')} required">
	<label for="ctsUrn">
		<g:message code="person.ctsUrn.label" default="Cts Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ctsUrn" pattern="${personInstance.constraints.ctsUrn.matches}" required="" value="${personInstance?.ctsUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="person.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="1000" value="${personInstance?.notes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'editor', 'error')} required">
	<label for="editor">
		<g:message code="person.editor.label" default="Editor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="editor" name="editor.id" from="${edu.furman.classics.Editor.list()}" optionKey="id" required="" value="${personInstance?.editor?.id}" class="many-to-one"/>

</div>

