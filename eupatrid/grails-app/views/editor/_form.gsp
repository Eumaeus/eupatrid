<%@ page import="edu.furman.classics.Editor" %>



<div class="fieldcontain ${hasErrors(bean: editorInstance, field: 'editorId', 'error')} required">
	<label for="editorId">
		<g:message code="editor.editorId.label" default="Editor Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="editorId" maxlength="10" required="" value="${editorInstance?.editorId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: editorInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="editor.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" maxlength="250" required="" value="${editorInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: editorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="editor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="10" required="" value="${editorInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: editorInstance, field: 'bio', 'error')} required">
	<label for="bio">
		<g:message code="editor.bio.label" default="Bio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bio" required="" value="${editorInstance?.bio}"/>

</div>

