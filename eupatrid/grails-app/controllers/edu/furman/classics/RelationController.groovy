package edu.furman.classics



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RelationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 50, 100)
        respond Relation.list(params), model:[relationInstanceCount: Relation.count()]
    }

    def show(Relation relationInstance) {
        respond relationInstance
    }

    def create() {
        respond new Relation(params)
    }

    @Transactional
    def save(Relation relationInstance) {
        if (relationInstance == null) {
            notFound()
            return
        }

        if (relationInstance.hasErrors()) {
            respond relationInstance.errors, view:'create'
            return
        }

        relationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'relation.label', default: 'Relation'), relationInstance.id])
                redirect relationInstance
            }
            '*' { respond relationInstance, [status: CREATED] }
        }
    }

    def edit(Relation relationInstance) {
        respond relationInstance
    }

    @Transactional
    def update(Relation relationInstance) {
        if (relationInstance == null) {
            notFound()
            return
        }

        if (relationInstance.hasErrors()) {
            respond relationInstance.errors, view:'edit'
            return
        }

        relationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Relation.label', default: 'Relation'), relationInstance.id])
                redirect relationInstance
            }
            '*'{ respond relationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Relation relationInstance) {

        if (relationInstance == null) {
            notFound()
            return
        }

        relationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Relation.label', default: 'Relation'), relationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'relation.label', default: 'Relation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
