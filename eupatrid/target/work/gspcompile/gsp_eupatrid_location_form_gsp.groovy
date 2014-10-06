import edu.furman.classics.Location
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_location_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/location/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: locationInstance, field: 'locationLabel', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("location.locationLabel.label"),'default':("Location Label")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("locationLabel"),'required':(""),'value':(locationInstance?.locationLabel)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: locationInstance, field: 'pleiadesUrn', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("location.pleiadesUrn.label"),'default':("Pleiades Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("pleiadesUrn"),'required':(""),'value':(locationInstance?.pleiadesUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: locationInstance, field: 'person', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("location.person.label"),'default':("Person")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("person"),'name':("person.id"),'from':(edu.furman.classics.Person.list()),'optionKey':("id"),'required':(""),'value':(locationInstance?.person?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: locationInstance, field: 'locationType', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("location.locationType.label"),'default':("Location Type")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['name':("locationType"),'from':(locationInstance.constraints.locationType.inList),'required':(""),'value':(locationInstance?.locationType),'valueMessagePrefix':("location.locationType")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: locationInstance, field: 'ctsUrn', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("location.ctsUrn.label"),'default':("Cts Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("ctsUrn"),'pattern':(locationInstance.constraints.ctsUrn.matches),'required':(""),'value':(locationInstance?.ctsUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: locationInstance, field: 'editor', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("location.editor.label"),'default':("Editor")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['id':("editor"),'name':("editor.id"),'from':(edu.furman.classics.Editor.list()),'optionKey':("id"),'required':(""),'value':(locationInstance?.editor?.id),'class':("many-to-one")],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412094635000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
