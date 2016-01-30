<%@ page import="com.surelution.medical.User" %>
<g:setProvider library="jquery"/>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<dl class="dl-horizontal">
	   <dt><label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	       <input type="text" class="form-control" placeholder="用户名" name="username" required="" value="${userInstance?.username}" id="username">
	       <span id="message"></span>
	      </div>
	   </dd>
	</dl>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <dl class="dl-horizontal">
       <dt><label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label></dt>
       <dd>
       <div class="col-xs-8">
        <input type="text" class="form-control" placeholder="密码" name="password" required="" value="${userInstance?.password}">
        </div>
       </dd>
    
    </dl>
	
	
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
<dl class="dl-horizontal">
       <dt><label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label></dt>
       <dd><g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" /></dd>
    
    </dl>
	
	
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
<dl class="dl-horizontal">
       <dt><label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label></dt>
       <dd><g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" /></dd>
    
    </dl>
	
	
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
<dl class="dl-horizontal">
       <dt><label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label></dt>
       <dd><g:checkBox name="enabled" value="${userInstance?.enabled}" /></dd>
    
    </dl>
	
	
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
<dl class="dl-horizontal">
       <dt><label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label></dt>
       <dd><g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" /></dd>
    
    </dl>
	
	
</div>

 
     
