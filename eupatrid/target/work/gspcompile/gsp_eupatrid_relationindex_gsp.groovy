import edu.furman.classics.Relation
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eupatrid_relationindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/relation/index.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'relation.label', default: 'Relation'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
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
invokeTag('message','g',14,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',14,['class':("create"),'action':("create")],2)
printHtmlPart(7)
invokeTag('message','g',18,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(8)
if(true && (flash.message)) {
printHtmlPart(9)
expressionOut.print(flash.message)
printHtmlPart(10)
}
printHtmlPart(11)
invokeTag('message','g',26,['code':("relation.fromPerson.label"),'default':("From Person")],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',28,['property':("relationType"),'title':(message(code: 'relation.relationType.label', default: 'Relation Type'))],-1)
printHtmlPart(13)
invokeTag('message','g',30,['code':("relation.toPerson.label"),'default':("To Person")],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',32,['property':("ctsUrn"),'title':(message(code: 'relation.ctsUrn.label', default: 'Cts Urn'))],-1)
printHtmlPart(14)
invokeTag('sortableColumn','g',34,['property':("notes"),'title':(message(code: 'relation.notes.label', default: 'Notes'))],-1)
printHtmlPart(13)
invokeTag('message','g',36,['code':("relation.editor.label"),'default':("Editor")],-1)
printHtmlPart(15)
loop:{
int i = 0
for( relationInstance in (relationInstanceList) ) {
printHtmlPart(16)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(17)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: relationInstance, field: "fromPerson"))
})
invokeTag('link','g',44,['action':("show"),'id':(relationInstance.id)],3)
printHtmlPart(18)
expressionOut.print(fieldValue(bean: relationInstance, field: "relationType"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: relationInstance, field: "toPerson"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: relationInstance, field: "ctsUrn"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: relationInstance, field: "notes"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: relationInstance, field: "editor"))
printHtmlPart(19)
i++
}
}
printHtmlPart(20)
invokeTag('paginate','g',61,['total':(relationInstanceCount ?: 0)],-1)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',64,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1412535519000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
