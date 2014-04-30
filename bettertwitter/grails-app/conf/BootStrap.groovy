import org.grails.twitter.auth.Person
import org.grails.twitter.auth.*

class BootStrap {

	def springSecurityService

    def init = { servletContext ->
    	if (!Person.count()) {
    		def userRole = new Authority(authority: 'ROLE_USER').save()

    		def password = 'password'
    		//def personAuth = new PersonAuthority()

    		[kyle: 'Kyle Bibler', john: 'John Smith', batman: 'Bruce Wayne'].each{
    			username, realName->
    		
    			def user = new Person(username: username, realName: realName, 
    				password: password)
    			user.save()
    		 	//PersonAuthority.create(user, userRole, true)
    		 }
    	}
    }
    def destroy = {
    }
}
