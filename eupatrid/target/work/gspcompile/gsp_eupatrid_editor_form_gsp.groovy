import edu.furman.classics.Editor
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_editor_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/editor/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: editorInstance, field: 'editorId', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("editor.editorId.label"),'default':("Editor Id")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("editorId"),'maxlength':("10"),'required':(""),'value':(editorInstance?.editorId)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: editorInstance, field: 'fullName', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("editor.fullName.label"),'default':("Full Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("fullName"),'maxlength':("250"),'required':(""),'value':(editorInstance?.fullName)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: editorInstance, field: 'password', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("editor.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['type':("password"),'name':("password"),'maxlength':("10"),'required':(""),'value':(editorInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: editorInstance, field: 'bio', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("editor.bio.label"),'default':("Bio")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("bio"),'required':(""),'value':(editorInstance?.bio)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412476421000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
