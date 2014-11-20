package edu.furman.classics

class Location {

	String citeUrn
    String pleiadesUrn
    String locationLabel
    Person person
    String ctsUrn
    Editor editor
    String locationType

    static constraints = {
            citeUrn(display: false, nullable: true, blank: true)
                    locationLabel(blank: false, size:0..250)
                    pleiadesUrn(blank: false, matchs: "urn:cite:fufolio:pleiades\\.[0-9]+")
                    person(nullable: false)
                    locationType(inList : ['isAt','isFrom','named4','demeNm', 'guest', 'fights'])
                    ctsUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*:([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*)(-([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*))?")
                    editor(nullable: false)
    }
      
    def beforeInsert() {
    	citeUrn = "temp"
    }
    
 	def afterInsert() {
       citeUrn = "urn:cite:eupatrid:placeRelation.${this.id}"
    }

    String locationId(){
            "${id}"
    }

    String toString(){
            "${person} ${locationType} ${locationLabel}" 
    }

}
