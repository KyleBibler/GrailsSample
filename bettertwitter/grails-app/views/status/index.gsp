<html>
<head>
	<meta name="layout" content="main"/>
	<title>What are you doing?</title>
	<g:javascript library="jquery" />
</head>
<body>


	<div class="page-header"style="padding-left: 30px">
		<h2>
			Post a status, search for people to follow...<small>or don't; I'm a header, not a cop.
			</small>
		</h2>
		
	



		<h3>What are you doing?</h1>
		<div class="updateStatusForm" style="padding-bottom:20px">
			<g:formRemote url="[action: 'updateStatus']" 
			update="messages" name="updateStatusForm"
			onSuccess="document.updateStatusForm.message.value=''">
				<g:textArea name="message" value=""/><br/>
				<g:submitButton class="btn btn-success" name="Update Status"
				onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure you want to post this? Read it to yourself first.')}');"/>
			</g:formRemote>
		</div>
		<div id="messages">
			<g:render template="messages" collection="${messages}" var="message"/>
		</div>
	</div>


</body>
</html>