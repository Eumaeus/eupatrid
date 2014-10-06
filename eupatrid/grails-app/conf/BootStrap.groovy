import edu.furman.classics.Editor

class BootStrap {

    def init = { servletContext ->
        final String BACKUP_ADMIN = 'cblack01'
        if (!Editor.findByEditorId(BACKUP_ADMIN)){
            new Editor(editorId:BACKUP_ADMIN,password:'pietas',fullName:'Christopher Blackwell',bio:'Editor').save()
        }
    }
    def destroy = {
    }
}
