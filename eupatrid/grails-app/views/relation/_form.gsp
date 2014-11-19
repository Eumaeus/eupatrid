<%@ page import="edu.furman.classics.Relation" %>



<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'fromPerson', 'error')} required">
	<label for="fromPerson">
		<g:message code="relation.fromPerson.label" default="From Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fromPerson" name="fromPerson.id" from="${edu.furman.classics.Person.listOrderByUrn()}" optionKey="id" required="" value="${relationInstance?.fromPerson?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'relationType', 'error')} required">
	<label for="relationType">
		<g:message code="relation.relationType.label" default="Relation Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="relationType" from="${relationInstance.constraints.relationType.inList}" required="" value="${relationInstance?.relationType}" valueMessagePrefix="relation.relationType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'toPerson', 'error')} required">
	<label for="toPerson">
		<g:message code="relation.toPerson.label" default="To Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="toPerson" name="toPerson.id" from="${edu.furman.classics.Person.listOrderByUrn()}" optionKey="id" required="" value="${relationInstance?.toPerson?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'ctsUrn', 'error')} required">
	<label for="ctsUrn">
		<g:message code="relation.ctsUrn.label" default="Cts Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ctsUrn" pattern="${relationInstance.constraints.ctsUrn.matches}" required="" value="${relationInstance?.ctsUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="relation.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="1000" value="${relationInstance?.notes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: relationInstance, field: 'editor', 'error')} required">
	<label for="editor">
		<g:message code="relation.editor.label" default="Editor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="editor" name="editor.id" from="${edu.furman.classics.Editor.list()}" optionKey="id" required="" value="${relationInstance?.editor?.id}" class="many-to-one"/>

</div>

