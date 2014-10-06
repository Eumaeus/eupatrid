<%@ page import="edu.furman.classics.Editor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="myth" />
        <g:set var="entityName" value="${message(code: 'editor.label', default: 'Editor')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
       <article>
        <div class="body">
			<g:form action="doLogin" method="post">
			<div class="dialog">
				<p>Enter your login details below:</p>
				<table  class="userForm">
					<tr class='prop'>
						<td valign='top' style='text-align:left;' width='20%'>
							<label for='editorId'>User ID:</label>
						</td>
						<td valign='top' style='text-align:left;' width='80%'>
							<input id="editorId" type='text' name='editorId' value='${editor?.editorId}' />
				￼
		</td>
					</tr>
					<tr class='prop'>
						<td valign='top' style='text-align:left;' width='20%'>
							<label for='password'>Password:</label>
						</td>
						<td valign='top' style='text-align:left;' width='80%'>
							<input id="password" type='password' name='password' value='${editor?.password}' />
						</td> 
					</tr>
				</table>
			</div>
			
			<div class="buttons">
				<span class="formButton">
					<input type="submit" value="Login"></input>
				</span>
			</div>
			</g:form>
        </div>
        </article>
    </body>
</html>
