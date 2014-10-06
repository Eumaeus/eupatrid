import edu.furman.classics.WorkVersion
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_workVersion_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/workVersion/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: workVersionInstance, field: 'ctsUrn', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("workVersion.ctsUrn.label"),'default':("Cts Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("ctsUrn"),'pattern':(workVersionInstance.constraints.ctsUrn.matches),'required':(""),'value':(workVersionInstance?.ctsUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: workVersionInstance, field: 'versionType', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("workVersion.versionType.label"),'default':("Version Type")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['name':("versionType"),'from':(workVersionInstance.constraints.versionType.inList),'required':(""),'value':(workVersionInstance?.versionType),'valueMessagePrefix':("workVersion.versionType")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: workVersionInstance, field: 'label', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("workVersion.label.label"),'default':("Label")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("label"),'required':(""),'value':(workVersionInstance?.label)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: workVersionInstance, field: 'ctsWork', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("workVersion.ctsWork.label"),'default':("Cts Work")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("ctsWork"),'name':("ctsWork.id"),'from':(edu.furman.classics.Source.list()),'optionKey':("id"),'required':(""),'value':(workVersionInstance?.ctsWork?.id),'class':("many-to-one")],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412216515000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
