<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	    <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">更新用户</h4>
        </div>
         <g:form action="update">
        <div class="modal-body">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>	
        </div>
        <div class="modal-footer">
           <g:hiddenField name="id" value="${userInstance?.id}" />
		   <g:hiddenField name="version" value="${userInstance?.version}" />
           <%--<g:submitButton name="create" class="btn btn-primary create" value="${message(code: 'default.button.update.label', default: 'Update')}" />--%>
           <input type="submit" name="submit" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
          <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
        </div>
      </g:form>
      
      <script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function(){
        	$("#username").change(function(){
                var userName = $("#username").val();
                var url ="${createLink(action:'checkUser',controller:'user')}";
                $.ajax({
		        type : "post",
		        url :url , 
		        data: {
		            userName:userName
		        },
		        dataType : "json",
		        //async:false,
		        success : function(data) {
		              if(data==true){
		            	$("#message").css("color","red")
                        $("#message").html("*该用户名已经使用，请更换用户名！")
                        $('input[type="submit"]').prop('disabled', true);
			              }else{
			            $("#message").css("color","green")
			            $("#message").html("*该用户名可以使用！")
			            $('input[type="submit"]').prop('disabled', false);
				              }
		        }  
		    });  
                });
            
            });
            
      </script>
	</body>
</html>
