<%@ page import="edu.furman.classics.Evidence" %>



<div class="fieldcontain ${hasErrors(bean: evidenceInstance, field: 'objectUrn', 'error')} required">
	<label for="objectUrn">
		<g:message code="evidence.objectUrn.label" default="Object Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="objectUrn" pattern="${evidenceInstance.constraints.objectUrn.matches}" required="" value="${evidenceInstance?.objectUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evidenceInstance, field: 'ctsUrn', 'error')} required">
	<label for="ctsUrn">
		<g:message code="evidence.ctsUrn.label" default="Cts Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ctsUrn" pattern="${evidenceInstance.constraints.ctsUrn.matches}" required="" value="${evidenceInstance?.ctsUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evidenceInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="evidence.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="1000" value="${evidenceInstance?.notes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evidenceInstance, field: 'editor', 'error')} required">
	<label for="editor">
		<g:message code="evidence.editor.label" default="Editor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="editor" name="editor.id" from="${edu.furman.classics.Editor.list()}" optionKey="id" required="" value="${evidenceInstance?.editor?.id}" class="many-to-one"/>

</div>

