<%@ page import="com.surelution.medical.Message" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css">
		   .main-asider{ width:15%; height:100%;min-height:650px; background-color:#383E4C; float:left;}
		</style>
	</head>
	<body>
		<div class="content-wrapper">
           <div class="content">
           <g:if test="${flash.message}">
			<div class="alert alert-info" role="alert">${flash.message}</div>
			</g:if>
               <div class="content_top">
                  <div class="mq"></div>
                  <div class="te">消&nbsp;息&nbsp;表</div>
               </div>
               <div class="main_content">
                   <div class="c1">
                     <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
	
			<g:link class="create" action="create" data-toggle="modal" data-target="#myModal"><g:message code="default.new.label" args="[entityName]" /></g:link>
                   <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                           </div>
                          </div>
                      </div>
                   </div>
                   <div class="tab">
                   <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th><g:message code="message.keyWord.label" default="Keyord"/></th>
        <th><g:message code="message.message.label" default="Account Expired"/></th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
        <g:each in="${messageInstanceList}" status="i" var="messageInstance">
					<tr>
					
						<td>
						<%--<g:link action="show" id="${messageInstance.id}">${fieldValue(bean: messageInstance, field: "keyWord")}</g:link>--%>
						 ${fieldValue(bean: messageInstance, field: "keyWord")}
						 </td>
					
						<td>${fieldValue(bean: messageInstance, field: "message")}</td>
						
						 <td width="7%">
						
						    <a href="${createLink(action:'delete',controller:'message',id:messageInstance?.id)}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><span class="glyphicon glyphicon-trash" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除消息"></span></a>&nbsp;&nbsp;<%--&nbsp;&nbsp;
		 <g:link rel="external" action="edit" id="${messageInstance?.id}" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新消息"></span></g:link></td>
					 --%><a rel="external" href="${createLink(action:'edit',id:messageInstance?.id) }" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新消息"></span></a></td>
					 <div class="modal fade" id="edit" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                                
                           </div>
                          </div>
                      </div>
					</tr>
				</g:each>
    </tbody>
  </table>
  
  
  
  </div>
        
               </div>
               
           </div>     
          
       </div>	
	</body>
</html>
