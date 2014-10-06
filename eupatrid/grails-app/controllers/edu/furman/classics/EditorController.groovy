package edu.furman.classics



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EditorController {

      def login = {  
            if (request.method == "GET"){
               session.editorId = null
               def editor = new Editor() 
            } else {
                def editor = Editor.findByEditorIdAndPassword(params.editorId,paramsPassword)
                if (editor){
                    session.editorId = editor.editorId
                    redirect(uri:'/')
                } else {
                    flash['message'] = 'Please enter a valid Editor ID and password'
                }
            }
      }


    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


	   def doLogout = {
	   		session.user = null
	   		redirect(uri:'/')
	   }
	    
	   def doLogin = {
	   
	   		def ed = Editor.findWhere(editorId:params['editorId'], password:params['password'])
			session.user = ed
			if (ed) {
				redirect(uri:'/')
			} else {
				redirect(controller:'editor', action:'login')
			}	   
	   }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Editor.list(params), model:[editorInstanceCount: Editor.count()]
    }

    def show(Editor editorInstance) {
        respond editorInstance
    }

    def create() {
        respond new Editor(params)
    }

    @Transactional
    def save(Editor editorInstance) {
        if (editorInstance == null) {
            notFound()
            return
        }

        if (editorInstance.hasErrors()) {
            respond editorInstance.errors, view:'create'
            return
        }

        editorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'editor.label', default: 'Editor'), editorInstance.id])
                redirect editorInstance
            }
            '*' { respond editorInstance, [status: CREATED] }
        }
    }

    def edit(Editor editorInstance) {
        respond editorInstance
    }

    @Transactional
    def update(Editor editorInstance) {
        if (editorInstance == null) {
            notFound()
            return
        }

        if (editorInstance.hasErrors()) {
            respond editorInstance.errors, view:'edit'
            return
        }

        editorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Editor.label', default: 'Editor'), editorInstance.id])
                redirect editorInstance
            }
            '*'{ respond editorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Editor editorInstance) {

        if (editorInstance == null) {
            notFound()
            return
        }

        editorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Editor.label', default: 'Editor'), editorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'editor.label', default: 'Editor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
