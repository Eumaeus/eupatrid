import edu.furman.classics.Person
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_person_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/person/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: personInstance, field: 'personName', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("person.personName.label"),'default':("Person Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("personName"),'maxlength':("250"),'required':(""),'value':(personInstance?.personName)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: personInstance, field: 'ctsUrn', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("person.ctsUrn.label"),'default':("Cts Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("ctsUrn"),'pattern':(personInstance.constraints.ctsUrn.matches),'required':(""),'value':(personInstance?.ctsUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: personInstance, field: 'notes', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("person.notes.label"),'default':("Notes")],-1)
printHtmlPart(6)
invokeTag('textArea','g',28,['name':("notes"),'cols':("40"),'rows':("5"),'maxlength':("1000"),'value':(personInstance?.notes)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: personInstance, field: 'editor', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("person.editor.label"),'default':("Editor")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("editor"),'name':("editor.id"),'from':(edu.furman.classics.Editor.list()),'optionKey':("id"),'required':(""),'value':(personInstance?.editor?.id),'class':("many-to-one")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412527626000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
