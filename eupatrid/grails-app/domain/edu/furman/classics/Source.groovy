package edu.furman.classics
import edu.harvard.chs.cite.CtsUrn
import edu.harvard.chs.cite.CiteUrn

class Source {

    String workUrn
    String label
    static hasMank = [versions: WorkVersion]

    static constraints = {
    	workUrn(blank: false, matches: "urn:cts:[a-zA-Z0-9]+:[a-zA-Z0-9]+\\.[a-zA-Z0-9]+")
        label(blank: false)
    }

    String toString() {
        "${label}: ${workUrn}"
    }
}
