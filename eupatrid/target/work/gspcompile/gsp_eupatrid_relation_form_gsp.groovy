import edu.furman.classics.Relation
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_relation_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/relation/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: relationInstance, field: 'fromPerson', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("relation.fromPerson.label"),'default':("From Person")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("fromPerson"),'name':("fromPerson.id"),'from':(edu.furman.classics.Person.list()),'optionKey':("id"),'required':(""),'value':(relationInstance?.fromPerson?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: relationInstance, field: 'relationType', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("relation.relationType.label"),'default':("Relation Type")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['name':("relationType"),'from':(relationInstance.constraints.relationType.inList),'required':(""),'value':(relationInstance?.relationType),'valueMessagePrefix':("relation.relationType")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: relationInstance, field: 'toPerson', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("relation.toPerson.label"),'default':("To Person")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("toPerson"),'name':("toPerson.id"),'from':(edu.furman.classics.Person.list()),'optionKey':("id"),'required':(""),'value':(relationInstance?.toPerson?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: relationInstance, field: 'ctsUrn', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("relation.ctsUrn.label"),'default':("Cts Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("ctsUrn"),'pattern':(relationInstance.constraints.ctsUrn.matches),'required':(""),'value':(relationInstance?.ctsUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: relationInstance, field: 'notes', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("relation.notes.label"),'default':("Notes")],-1)
printHtmlPart(8)
invokeTag('textArea','g',46,['name':("notes"),'cols':("40"),'rows':("5"),'maxlength':("1000"),'value':(relationInstance?.notes)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: relationInstance, field: 'editor', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("relation.editor.label"),'default':("Editor")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['id':("editor"),'name':("editor.id"),'from':(edu.furman.classics.Editor.list()),'optionKey':("id"),'required':(""),'value':(relationInstance?.editor?.id),'class':("many-to-one")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412531929000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
