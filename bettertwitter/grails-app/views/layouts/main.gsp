<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head style="width: 100%">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Better Twitter"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css">

		<nav class="navbar navbar-inverse" role="navigation">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	      	</button>
      		<a class="navbar-brand" href="/bettertwitter">Better Twitter</a>
    		</div>
		    <div class="collapse navbar-collapse" id="navbar-collapse-1">
		    	<sec:ifLoggedIn>		
			     	<p class="navbar-text">
					Logged in as: <sec:loggedInUserInfo field="username"></sec:loggedInUserInfo>	
					</p>
					<div class='navbar-nav navbar-form'>
						<a href='/bettertwitter/j_spring_security_logout'>
							<Button class="btn btn-danger" controller='logout' action='auth'>Logout</Button>
						</a>
					</div>	
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<div class="navbar-nav navbar-form">
						<a href='login/auth'>
							<Button class="btn btn-success" controller='login' action='auth'>Login</Button>
						</a>
						<!-- <a href='register'>
							<Button class="btn btn-info">Register</Button>
						</a> -->
					</div>
				</sec:ifNotLoggedIn>

		    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="navbar-form">       
			        <div class ="searchForm navbar-nav pull-right">
						<g:form controller="searchable">
							<g:textField class="form-control" placeholder="Search for Users to Follow" name="q" value=""></g:textField>
							<g:submitButton class="btn btn-info" name="Search"></g:submitButton>
						</g:form>
					</div>
				</div>
			</div>		    
		  </div>
		</nav>




		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		

		<g:layoutBody/>
		
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		
		<g:javascript library="application"/>
		<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
		<r:layoutResources />
	</body>
</html>
