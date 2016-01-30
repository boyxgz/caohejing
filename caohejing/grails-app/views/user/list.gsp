
<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css">
		   .main-asider{ width:15%; height:100%;min-height:650px; background-color:#383E4C; float:left;}
		   .modalstyle{ width: 40%; background-color:#F5F5F5;filter:alpha(opacity=50); margin-left:30%; height:80%; margin-top:5%; border-radius:5px; border: 1px solid #C5CBD7}
		</style>
		<script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
		<script type="text/javascript">
		function show(obj){
            $("#"+obj).toggle();
			}
		
		$(function(){
		$("a[data-target=#myModal]").click(function(event) {
			$(this).data('myModal',null)
		    event.preventDefault();
		    var target = $(this).attr("href"); 
			    $("#myModal").load(target, function() { 
			    	$("#myModal").addClass("modalstyle")
                   $("#myModal").modal('show');  			    	
		    });
		});
		});
		</script>
	</head>
	<body>
		<div class="content-wrapper">
           <div class="content">
                   <g:if test="${flash.message}">
		            <div class="alert alert-info" role="alert">
					${flash.message}
					</div>
				</g:if>
                
           
               <div class="content_top">
                  <div class="mq"></div>
                  <div class="te">用&nbsp;户&nbsp;表</div>
               </div>
               <div class="main_content">
                   <div class="c1">
                     <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
	
			<g:link class="create" action="create" data-toggle="modal" data-target="#Modal"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<div class="modal fade" id="Modal" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                           </div>
                          </div>
                      </div>
		
                   </div>
                   <div class="tab">
                   <table class="table table-bordered  table-striped">
    <thead>
      <tr>
        <th><g:message code="user.username.label" default="Username"/></th>
        <th><g:message code="user.accountExpired.label" default="Account Expired"/></th>
        <th><g:message code="user.accountLocked.label" default="Account Locked"/></th>
        <th><g:message code="user.enabled.label" default="Enabled"/></th>
        <th><g:message code="user.passwordExpired.label" default="Password Expired"/></th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <g:each in="${userInstanceList}" status="i" var="userInstance">
      <tr>
        <td data-toggle="collapse" data-target="#demo">
        <%--<g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link>
        --%>
        <a id="td-${userInstance.id }" onClick="show('div-${userInstance.id}')" style="cursor: pointer;">${userInstance.username }</a>
        </td>

        <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
        <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
		<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
		<td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
		<td>
		
		<%-- <g:hiddenField name="id" value="${userInstance?.id}" />
		 <g:actionSubmit class="btn btn-info" id="${userInstance?.id}"  action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />&nbsp;&nbsp; --%>
		 <a href="${createLink(action:'delete',controller:'user',id:userInstance.id)}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><span class="glyphicon glyphicon-trash" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除用户"></span></a>
		 
		&nbsp;&nbsp;
		
		 <g:link rel="external" action="edit" id="${userInstance?.id}"  data-toggle="modal" data-target="#myModal">
		 <span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新用户"></span></g:link>
		 </td>
            
      </tr>
      <g:if test="${userInstance?.id}">
      <tr>
        <td colspan="6">
           <div id="div-${userInstance.id}" style="display:none;">
                <iframe src="${createLink(action:'show',id:userInstance.id) }" width="90%" frameborder=0 scrolling="no"> 
                </iframe>
           </div>
        </td>
        </tr>
     </g:if>
     </g:each>
    </tbody>
  </table>
  
   <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                                
                           </div>
                          </div>
                      </div>
  </div>
        
               </div>
               
           </div>     
          
       </div>
	</body>
</html>
