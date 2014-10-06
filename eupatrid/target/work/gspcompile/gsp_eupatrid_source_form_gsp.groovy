import edu.furman.classics.Source
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_source_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/source/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: sourceInstance, field: 'workUrn', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("source.workUrn.label"),'default':("Work Urn")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("workUrn"),'pattern':(sourceInstance.constraints.workUrn.matches),'required':(""),'value':(sourceInstance?.workUrn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: sourceInstance, field: 'label', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("source.label.label"),'default':("Label")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("label"),'required':(""),'value':(sourceInstance?.label)],-1)
printHtmlPart(5)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412216489000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
