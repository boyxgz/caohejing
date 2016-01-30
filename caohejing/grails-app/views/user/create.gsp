<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>		
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">新建用户</h4>
        </div>
         <g:form action="save">
        <div class="modal-body">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>	
        </div>
        <div class="modal-footer">
          <%--<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />--%>
          <input type="submit" name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        </div>
      </g:form> 
      
      
      
     
	</body>
</html>
