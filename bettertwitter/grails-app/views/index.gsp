<!DOCTYPE html>
<html>
	<head>	
		<meta name="layout" content="main"/>
		<title>Better Twitter</title>
		
	</head>
	<body>
		<div class="jumbotron" align="center">
		  <h1>Hello, Person!</h1>
		  <p>This is a site that is mostly like Twitter, except without all that pesky extra functionality like favoriting tweets or a super polished layout. What we do offer is a semi-functioning web-app where you can post updates to all the people who use this site (about zero) that only has one core feature that Twitter doesn't have. When you are about to submit a "[insert non-copywright name to call a status]", our site makes sure that you understand what you are submitted to the internet/world for everyone to see by making you read the message again. Seriously guys, an employer might see that someday...</p>
		  <p>
		  	<a href="status/index">
			  	<button class="btn btn-primary btn-lg">
			  		<span class="glyphicon glyphicon-star"></span> Post a Status Now!
			  	</button>
		  	</a>
		  </p>
		</div>
		<div style="padding-left: 10px">
			<p>
			Please note, you cannot actually register for this service. You may however use one of the two users already created usernames: batman, kyle. The password is password. Also you cannot logout, sorry. The author of this web-app is Kyle Bibler and was made mostly following the twitter with grails tutorial, but I added in more stuff and better styling.
			</p>
		</div>

		<!--
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		-->
		<!-- <div id="page-body" role="main">
			
			<h1>Welcome to Grails</h1>
			<p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>
			

			<!-- <div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div> 
		</div> -->
	</body>
</html>
