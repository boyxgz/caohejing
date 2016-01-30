<%@ page import="com.surelution.medical.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">更新医生</h4>
        </div>
			<g:form action="update">
			   <div class="modal-body">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>	
              </div>
				<div class="modal-footer">
                 <g:hiddenField name="id" value="${doctorInstance?.id}" />
				<g:hiddenField name="version" value="${doctorInstance?.version}" />
           <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
          <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
        </div>	
	</g:form>
			
	</body>
</html>
