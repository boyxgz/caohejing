
<%@ page import="com.surelution.medical.Doctor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
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
                  <div class="te">医&nbsp;生&nbsp;表</div>
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
                   <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th><g:message code="doctor.name.label" default="Name"/></th>
        <th><g:message code="doctor.introduction.label" default="Introduction"/></th>
        <th><g:message code="doctor.station.label" default="Station" /></th>
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
					<tr>
					
						<td width="10%">
						
						<%--<g:link action="show" id="${doctorInstance.id}">${fieldValue(bean: doctorInstance, field: "name")}</g:link>
						--%>
						${fieldValue(bean: doctorInstance, field: "name")}
						</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "introduction")}</td>
					
						<td>${fieldValue(bean: doctorInstance, field: "station.name")}</td>
					    
					    <td width="8%">
						
						    <a href="${createLink(action:'delete',controller:'doctor',id:doctorInstance?.id)}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><span class="glyphicon glyphicon-trash" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除医生"></span></a>&nbsp;&nbsp;
		 <g:link action="edit" id="${doctorInstance?.id}" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新医生"></span></g:link></td>
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
