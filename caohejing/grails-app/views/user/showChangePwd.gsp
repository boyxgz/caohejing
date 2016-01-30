<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title>修改用户密码</title>
	</head>
	<body>
	   <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color: black; margin-right:80%;">修改用户密码</h4>
        </div>
			<g:form action="changePwd">
			 <div class="modal-body">
				<g:hiddenField name="id" value="${userInstance?.id}" 

/>
				<g:hiddenField name="version" 

value="${userInstance?.version}" />
				
					<div class="fieldcontain ${hasErrors(bean: 

userInstance, field: 'password', 'error')} required">
						<dl class="dl-horizontal">
	   <dt><label for="password" style="color: black;">
		原密码：
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
<input type="password" class="form-control" placeholder="原始密码" name="password" 

required="">
	      </div>
	   </dd>
	</dl>		
					</div>
					<div class="fieldcontain ${hasErrors(bean: 

userInstance, field: 'newPw1', 'error')} required">
						<dl class="dl-horizontal">
	   <dt><label for="pw1" style="color: black;">
		新密码：
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
 <input type="password" class="form-control" placeholder="新密码" name="newPw1" 

required="">
	      </div>
	   </dd>
	</dl>		
						
					</div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'newPw2', 

'error')} required">
						<dl class="dl-horizontal">
	   <dt><label for="newPw2" style="color: black;">
		确认密码：
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="password" class="form-control" placeholder="确认密码" 

name="newPw2" required="">
	      </div>
	   </dd>
	</dl>		
					</div>
				
				</div>
				 <div class="modal-footer">
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn 

btn-primary" value="${message(code: 'default.button.update.label', default: 

'Update')}" />
				</fieldset>
				</div>
			</g:form>
		
	</body>
</html>




