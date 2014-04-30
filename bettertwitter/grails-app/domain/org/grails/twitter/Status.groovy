package org.grails.twitter
import org.grails.twitter.auth.*

class Status {

	String message
	int likes
	Person author
	Date dateCreated

    static constraints = {
    	message size: 2..160
    }
}
