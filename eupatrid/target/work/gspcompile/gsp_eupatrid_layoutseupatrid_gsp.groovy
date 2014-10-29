import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_layoutseupatrid_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/eupatrid.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',4,['default':("Grails")],-1)
})
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(2)
expressionOut.print(resource(dir:'css',file:'myth.css'))
printHtmlPart(3)
expressionOut.print(resource(dir:'images',file:'favicon.ico'))
printHtmlPart(4)
expressionOut.print(resource(dir:'css',file:'jquery-ui-1.8.16.custom.css'))
printHtmlPart(5)
invokeTag('layoutHead','g',9,[:],-1)
printHtmlPart(1)
invokeTag('javascript','g',10,['library':("application")],-1)
printHtmlPart(6)
invokeTag('javascript','g',11,['library':("jquery.min")],-1)
printHtmlPart(1)
invokeTag('javascript','g',12,['library':("jquery-ui.min")],-1)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('javascript','g',97,[:],2)
printHtmlPart(9)
createClosureForHtmlPart(10, 2)
invokeTag('javascript','g',110,[:],2)
printHtmlPart(11)
})
invokeTag('captureHead','sitemesh',112,[:],1)
printHtmlPart(12)
createTagBody(1, {->
printHtmlPart(13)
expressionOut.print(resource(dir:'images',file:'spinner.gif'))
printHtmlPart(14)
expressionOut.print(message(code:'spinner.alt',default:'Loading...'))
printHtmlPart(15)
expressionOut.print(resource(dir:'images',file:'Logo_w_title_small.png'))
printHtmlPart(16)
expressionOut.print(resource(dir : '/'))
printHtmlPart(17)
createClosureForHtmlPart(18, 2)
invokeTag('link','g',121,['url':([action:'graph',controller:'relationship'])],2)
printHtmlPart(19)
expressionOut.print(resource(dir : '/'))
printHtmlPart(20)
if(true && (session.user)) {
printHtmlPart(21)
createClosureForHtmlPart(22, 3)
invokeTag('link','g',128,['url':([controller:'editor', action:'doLogout'])],3)
printHtmlPart(23)
}
else {
printHtmlPart(24)
createClosureForHtmlPart(25, 3)
invokeTag('link','g',131,['url':([controller:'editor', action:'login'])],3)
printHtmlPart(26)
}
printHtmlPart(27)
invokeTag('layoutBody','g',137,[:],-1)
printHtmlPart(28)
})
invokeTag('captureBody','sitemesh',141,[:],1)
printHtmlPart(29)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412606356000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
