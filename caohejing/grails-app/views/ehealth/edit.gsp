<%@ page import="com.surelution.medical.Ehealth" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'ehealth.label', default: 'Ehealth')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	   <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">更新健康E站</h4>
        </div>
			<g:form action="update">
			   <div class="modal-body">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>	
              </div>
				<div class="modal-footer">
                  <g:hiddenField name="id" value="${ehealthInstance?.id}" />
				  <g:hiddenField name="version" value="${ehealthInstance?.version}" /> 
				  <g:hiddenField name="max" value="${params.max}" />
				  <g:hiddenField name="offset" value="${params.offset}" />
         <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}"  />
          <%--<a href="${createLink(action:'update',params:params)}" class="btn btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}">更新</a>--%>
          <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
          <%--<a href="${createLink(action:'list', params:params) }" class="btn btn-default">取消</a>--%>
        </div>	
	</g:form>
	</body>
</html>
