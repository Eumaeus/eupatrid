<%@ page import="edu.furman.classics.Source" %>



<div class="fieldcontain ${hasErrors(bean: sourceInstance, field: 'workUrn', 'error')} required">
	<label for="workUrn">
		<g:message code="source.workUrn.label" default="Work Urn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="workUrn" pattern="${sourceInstance.constraints.workUrn.matches}" required="" value="${sourceInstance?.workUrn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sourceInstance, field: 'label', 'error')} required">
	<label for="label">
		<g:message code="source.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="label" required="" value="${sourceInstance?.label}"/>

</div>

