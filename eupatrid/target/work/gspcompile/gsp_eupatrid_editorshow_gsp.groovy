import edu.furman.classics.Editor
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_editorshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/editor/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'editor.label', default: 'Editor'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(5)
invokeTag('message','g',12,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',13,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',13,['class':("list"),'action':("index")],2)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',18,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (editorInstance?.editorId)) {
printHtmlPart(13)
invokeTag('message','g',26,['code':("editor.editorId.label"),'default':("Editor Id")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',28,['bean':(editorInstance),'field':("editorId")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (editorInstance?.fullName)) {
printHtmlPart(17)
invokeTag('message','g',35,['code':("editor.fullName.label"),'default':("Full Name")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',37,['bean':(editorInstance),'field':("fullName")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (editorInstance?.password)) {
printHtmlPart(19)
invokeTag('message','g',44,['code':("editor.password.label"),'default':("Password")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',46,['bean':(editorInstance),'field':("password")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (editorInstance?.bio)) {
printHtmlPart(21)
invokeTag('message','g',53,['code':("editor.bio.label"),'default':("Bio")],-1)
printHtmlPart(22)
invokeTag('fieldValue','g',55,['bean':(editorInstance),'field':("bio")],-1)
printHtmlPart(15)
}
printHtmlPart(23)
createTagBody(2, {->
printHtmlPart(24)
createTagBody(3, {->
invokeTag('message','g',63,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',63,['class':("edit"),'action':("edit"),'resource':(editorInstance)],3)
printHtmlPart(25)
invokeTag('actionSubmit','g',64,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',66,['url':([resource:editorInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',68,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412556984000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}