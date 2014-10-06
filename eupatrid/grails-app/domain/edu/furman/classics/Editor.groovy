package edu.furman.classics

class Editor {

	String	editorId
	String	fullName
	String	bio
	String	password

    static constraints = {
    	editorId(size:3..10, blank:false, unique: true)
    	fullName(size:3..250)
    	password(size:6..10, password: true)
		bio()
    }
    
    String toString(){
    	"${editorId}: ${fullName}"
    }
    
    String displayName(){
		"${fullName}: ${bio}"	    	
    }
}
