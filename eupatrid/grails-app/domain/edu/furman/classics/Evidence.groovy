package edu.furman.classics

class Evidence {
    
    String objectUrn
    String ctsUrn
    String notes
    Editor editor

    static constraints = {
            objectUrn(blank: false, validator: { val ->
                    if( Person.findByCiteUrn(val) != null){ 
                        true;
                    } else {
                        if (Relation.findByCiteUrn(val) != null){
                            true;
                        } else {
                            false;
                        }
                    }
              } )
            ctsUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*:([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*)(-([a-zA-Z0-9]+(\\.[a-zA-Z0-9]+)*))?")
            notes(blank:true,nullable: true,size:0..1000)
            editor(nullable: false)
    }



    String toString(){
        "${objectUrn} : ${ctsUrn}"
    }

}
