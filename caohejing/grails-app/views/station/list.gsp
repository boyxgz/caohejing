<%@ page import="com.surelution.medical.Station" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'station.label', default: 'Station')}" />
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
                  <div class="te">站&nbsp;点&nbsp;表</div>
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
        <th><g:message code="station.name.label" default="Station"/></th>
        <th><g:message code="station.phone.label" default="Phone"/></th>
        <th><g:message code="station.stationAddress.label" default="StationAddress"/></th>
        <th><g:message code="station.serviceItem.label" default="ServiceItem"/></th>
        <th><g:message code="station.serviceTime.label" default="ServiceTime"/></th>
      </tr>
    </thead>
    <tbody>
        <g:each in="${stationInstanceList}" status="i" var="stationInstance">
					<tr>
					
						<td width="16%">
						
						<g:link action="show" id="${stationInstance.id}">${fieldValue(bean: stationInstance, field: "name")}</g:link>
						
						</td>
					
						<td width="10%">${fieldValue(bean: stationInstance, field: "phone")}</td>
						<td>${fieldValue(bean: stationInstance, field: "stationAddress")}</td>
					
						<td>${fieldValue(bean: stationInstance, field: "serviceItem")}</td>
					
						<td>${fieldValue(bean: stationInstance, field: "serviceTime")}</td>
			
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
