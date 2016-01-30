
<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap.css">
       <link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap-theme.min.css">
       <script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
       <script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
	</head>
	<body>
				    <table class="table">
    <thead>
      <tr>
        <th></th>
        <th></th>
       
        <th>现有岗位职责</th>
        <th>可添加岗位职责</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <%--<g:if test="${userInstance?.username}">
        <td><span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span></td>
        </g:if>
        
        <g:if test="${userInstance?.enabled}">
        <td><span class="property-value" aria-labelledby="enabled-label">
						<g:formatBoolean boolean="${userInstance?.enabled}" true="是" false="否"/>					
						</span></td>
        </g:if>
        --%><td></td>
        <td></td>
        
        <td>
           <span class="property-value">
					    <g:each in="${role}" var="r">
						  <a href="${createLink(action:'deleteRole', controller:'user', params:[userId:userInstance.id, roleId:r.id]) }">${r.name } - </a>
						  <br>
						</g:each>
						<br/>
					</span>	
        </td>
        <td>
           <span class="property-value">
					      <g:each in="${roleList }" var="rl">
							<a href="${createLink(action:'addRole', controller:'user', params:[userId:userInstance.id, roleId:rl.id]) }">${rl.name } + </a>
							<br/>
						  </g:each>
							<br/>
					</span>
        </td>
        
       
      </tr>
    </tbody>
  </table>
            
	</body>
</html>
