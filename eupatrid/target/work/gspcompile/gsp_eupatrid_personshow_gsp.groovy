import edu.furman.classics.Person
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_personshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/person/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'person.label', default: 'Person'))],-1)
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
invokeTag('message','g',13,['code':("default.home.label")],-1)
printHtmlPart(6)
createTagBody(2, {->
invokeTag('message','g',14,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("list"),'action':("index")],2)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (personInstance?.personName)) {
printHtmlPart(13)
invokeTag('message','g',27,['code':("person.personName.label"),'default':("Person Name")],-1)
printHtmlPart(14)
invokeTag('fieldValue','g',29,['bean':(personInstance),'field':("personName")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (personInstance?.ctsUrn)) {
printHtmlPart(17)
invokeTag('message','g',36,['code':("person.ctsUrn.label"),'default':("Cts Urn")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',38,['bean':(personInstance),'field':("ctsUrn")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (personInstance?.notes)) {
printHtmlPart(19)
invokeTag('message','g',45,['code':("person.notes.label"),'default':("Notes")],-1)
printHtmlPart(20)
invokeTag('fieldValue','g',47,['bean':(personInstance),'field':("notes")],-1)
printHtmlPart(15)
}
printHtmlPart(16)
if(true && (personInstance?.editor)) {
printHtmlPart(21)
invokeTag('message','g',54,['code':("person.editor.label"),'default':("Editor")],-1)
printHtmlPart(22)
createTagBody(3, {->
expressionOut.print(personInstance?.editor?.encodeAsHTML())
})
invokeTag('link','g',56,['controller':("editor"),'action':("show"),'id':(personInstance?.editor?.id)],3)
printHtmlPart(15)
}
printHtmlPart(23)
createTagBody(2, {->
printHtmlPart(24)
createTagBody(3, {->
invokeTag('message','g',64,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',64,['class':("edit"),'action':("edit"),'resource':(personInstance)],3)
printHtmlPart(25)
invokeTag('actionSubmit','g',65,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',67,['url':([resource:personInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',69,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412557196000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}