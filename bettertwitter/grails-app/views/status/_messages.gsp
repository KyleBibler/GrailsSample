
<div style="padding-bottom: 5px">


     <script type="text/javascript">
	    $(document).ready(function(){
	        $(".btn").tooltip();  

	    });
	</script>
	

	<div class="panel panel-info" style="width:75%">
		<div class="panel-heading">
			${message.author.realName} said at <g:formatDate date="${message.dateCreated}"/>:
		</div>
			
		<div class='panel-body'>
			${message.message}
			<button class="btn btn-warning pull-right" data-container="body" 
			data-toggle="tooltip" data-placement="right" title="This button doesn't actually do anything" >			
				 Like This Status!
			</button>
		</div>
	</div>
</div>

