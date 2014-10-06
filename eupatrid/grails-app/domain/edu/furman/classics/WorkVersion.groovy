package edu.furman.classics

class WorkVersion {

    String ctsUrn
    String versionType
    String label
    Source ctsWork

    static belongsTo = [ Source ]

    static constraints = {
    	ctsUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)")
        versionType(inList: ["edition","translation"])
        label(blank:false)
    }
    String toString(){
       "${label}: ${ctsUrn} (${versionType} of ${ctsWork}"
    }
}
