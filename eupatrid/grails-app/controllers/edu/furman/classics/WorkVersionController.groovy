package edu.furman.classics



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WorkVersionController {

   def beforeInterceptor = [
        action:this.&checkUser,
        except: ['index','list','show'] 
    ]

    def checkUser(){
        if(!session.user){
            redirect(controller:'editor',action:'login')
            return false
        }
    }
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond WorkVersion.list(params), model:[workVersionInstanceCount: WorkVersion.count()]
    }

    def show(WorkVersion workVersionInstance) {
        respond workVersionInstance
    }

    def create() {
        respond new WorkVersion(params)
    }

    @Transactional
    def save(WorkVersion workVersionInstance) {
        if (workVersionInstance == null) {
            notFound()
            return
        }

        if (workVersionInstance.hasErrors()) {
            respond workVersionInstance.errors, view:'create'
            return
        }

        workVersionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'workVersion.label', default: 'WorkVersion'), workVersionInstance.id])
                redirect workVersionInstance
            }
            '*' { respond workVersionInstance, [status: CREATED] }
        }
    }

    def edit(WorkVersion workVersionInstance) {
        respond workVersionInstance
    }

    @Transactional
    def update(WorkVersion workVersionInstance) {
        if (workVersionInstance == null) {
            notFound()
            return
        }

        if (workVersionInstance.hasErrors()) {
            respond workVersionInstance.errors, view:'edit'
            return
        }

        workVersionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'WorkVersion.label', default: 'WorkVersion'), workVersionInstance.id])
                redirect workVersionInstance
            }
            '*'{ respond workVersionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(WorkVersion workVersionInstance) {

        if (workVersionInstance == null) {
            notFound()
            return
        }

        workVersionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'WorkVersion.label', default: 'WorkVersion'), workVersionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'workVersion.label', default: 'WorkVersion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
