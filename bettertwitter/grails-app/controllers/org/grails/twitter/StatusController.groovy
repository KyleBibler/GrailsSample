package org.grails.twitter

import org.grails.twitter.auth.*

class StatusController {

	def springSecurityService

    def index() {
    	def msgs = currentUserTimeline()
    	[ messages: msgs]
    }

    def follow() {
        def per = Person.get(params.id)
        if(per) {
            def currentUser = lookupPerson()
            currentUser.addToFollowed(per)
            currentUser.save()
        }
        redirect action: 'index'
    }

    def updateStatus() {
    	def status = new Status(message: params.message, likes: 0)
    	status.author = lookupPerson()
    	status.save()
    	def messages = currentUserTimeline()
    	render template: 'messages', collection: messages, var: 'message'
    }

    private currentUserTimeline() {
    	def per = lookupPerson()
    	def messages = Status.withCriteria {  
            or {
                author {
                    eq 'username', springSecurityService.principal.username
                } 
                if(per.followed) {
                    inList 'author', per.followed
                }  
                
            }
            maxResults 10
            order 'dateCreated', 'desc'   
        }  		
			
    	messages
    }

    private lookupPerson() {
    	Person.get(springSecurityService.principal.id)
    }
}
