package edu.furman.classics

class Person {

	String citeUrn
	String personName
    String notes
	String ctsUrn
	Editor editor

	
	
    static constraints = {
        citeUrn(display: false, nullable: true, blank: true)
		personName(size:3..250,blank: false)
    	ctsUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*:([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*)(-([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*))?")
        notes(blank:true,nullable: true,size:0..1000)
    	editor(nullable: false)
    }
    
    def beforeInsert() {
    	citeUrn = "temp"
    }
    
 	def afterInsert() {
 	   def tempName = this.personName[0..3].trim()
       citeUrn = "urn:cite:eupatrid:person.${tempName}${this.id}"
    }
    
    String personId(){
    	"${id}"
    }
    
    String toString(){
    	"${personName} - ${citeUrn}"
    }
    
}
