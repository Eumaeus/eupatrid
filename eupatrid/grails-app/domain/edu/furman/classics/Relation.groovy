package edu.furman.classics

class Relation {

    String citeUrn
    Person fromPerson
    String fromPersonUrn
    String fromPersonName
    String relationType
    Person toPerson
    String toPersonUrn
    String toPersonName
    String ctsUrn
    String notes
    Editor editor

    static constraints = {
        citeUrn(display: false, nullable: true, blank: true)
        fromPerson(nullable: false)
        relationType(inList: ["sex","parent","ancestor","sameName","xenia"])
        toPerson(nullable: false)
        ctsUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*:([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*)(-([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*))?")
        notes(blank:true,nullable: true,size:0..1000)
        editor(nullable: false)
        fromPersonUrn(display: false, nullable: true, blank: true)
        toPersonUrn(display: false, nullable: true, blank: true)
        fromPersonName(display:false, nullable: true, blank: true)
        toPersonName(display:false, nullable: true, blank: true)
    }

    def beforeInsert() {
        citeUrn = "temp"
        fromPersonUrn = this.fromPerson.citeUrn
        toPersonUrn = this.toPerson.citeUrn
        fromPersonName = this.fromPerson.personName
        toPersonName = this.toPerson.personName
    }
    
    def beforeUpdate() {
        fromPersonUrn = this.fromPerson.citeUrn
        toPersonUrn = this.toPerson.citeUrn
        fromPersonName = this.fromPerson.personName
        toPersonName = this.toPerson.personName
    }

    def afterInsert() {
       def tempFName = this.fromPerson.personName[0..3].trim()
       def tempTName = this.toPerson.personName[0..3].trim()
       citeUrn = "urn:cite:eupatrid:relation.${tempFName}${this.relationType}${tempTName}${this.id}"
    }
        
    
    String toString(){
        "${toPerson} to ${fromPerson}"
    }

}
