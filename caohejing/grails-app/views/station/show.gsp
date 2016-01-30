
<%@page import="java.util.ResourceBundle.Control"%>
<%@ page import="com.surelution.medical.Station" %>
<!DOCTYPE html>
<html>
	<head>
	   <meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'station.label', default: 'Station')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script>
            
		</script>
	</head>
	<body>
		<div class="content-wrapper">
           <div class="content">
               <div class="content_top">
                  <div class="mq"></div>
                  <div class="te">显&nbsp;示&nbsp;站&nbsp;点</div>
               </div>
               <div class="main_content">
                   <div class="tab">
                      <table class="table table-bordered  table-striped">
                         <thead>
      <tr>
        <th>名称</th>
        <th>内容</th>
      </tr>
    </thead>
    <tbody>
     <g:if test="${stationInstance?.name}">
         <tr>
           <td><span id="name-label" class="property-label"><g:message code="station.name.label" default="Name" /></span></td>
           <td><span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${stationInstance}" field="name"/></span></td>
         </tr>
       </g:if>
       
       <g:if test="${stationInstance?.phone}">
           <tr>
              <td><span id="phone-label" class="property-label"><g:message code="station.phone.label" default="Phone" /></span></td>
              <td><span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${stationInstance}" field="phone"/></span></td>
           </tr>
       </g:if>
       <g:if test="${stationInstance?.serviceItem}">
           <tr>
              <td><span id="serviceItem-label" class="property-label"><g:message code="station.serviceItem.label" default="Service Item" /></span></td>
              <td><span class="property-value" aria-labelledby="serviceItem-label"><g:fieldValue bean="${stationInstance}" field="serviceItem"/></span></td>
           </tr>
       </g:if>
       <g:if test="${stationInstance?.serviceTime}">
           <tr>
              <td><span id="serviceTime-label" class="property-label"><g:message code="station.serviceTime.label" default="Service Time" /></span></td>
              <td><span class="property-value" aria-labelledby="serviceTime-label"><g:fieldValue bean="${stationInstance}" field="serviceTime"/></span></td>
           </tr>
       </g:if>
       <g:if test="${stationInstance?.stationAddress}">
           <tr>
              <td><span id="stationAddress-label" class="property-label"><g:message code="station.stationAddress.label" default="Station Address" /></span></td>
              <td><span class="property-value" aria-labelledby="stationAddress-label"><g:fieldValue bean="${stationInstance}" field="stationAddress"/></span></td>
           </tr>
       </g:if>
       <g:if test="${stationInstance?.to_coord}">
           <tr>
              <td><span id="to_coord-label" class="property-label"><g:message code="station.to_coord.label" default="Tocoord" /></span></td>
              <td><span class="property-value" aria-labelledby="to_coord-label"><g:fieldValue bean="${stationInstance}" field="to_coord"></g:fieldValue></span></td>
           </tr>
       </g:if>
     
    </tbody>
                       
                      </table>
                   </div>
               
               <dl class="dl-horizontal">
                  <dt><span class="property-label">站点图片</span></dt>
                  <dd>
                     <span> 
				       <g:uploadForm name="savePic" action="savePic" enctype= "multipart/form-data">
	                     <div style="float:left">
	                     <input type="file" id="stationPic" name="stationPic" accept="image/*" class="bg-info" style="height:35px;"/>
	                   </div>
	                   <div style="float:left">
	                   <%--<g:submitButton name="savePic" value="上传" class="btn btn-info"/>--%>
	                   <input type="submit" name="savePic" value="上传" class="btn btn-info"/>
	                   <span style="color: #f00">*图片建议尺寸：500像素*450像素</span>
                      </div>
                        <input type="hidden" name="id" value="${stationInstance?.id}">
                       </g:uploadForm>  
                    </span>
                  </dd>
               </dl>
               
               <g:if test="${pic}">
               <dl class="dl-horizontal">
                  <dt><span id="pictureList-label" class="property-label">图片</span></dt>
                  <dd>
                    <div style="float:left">
				     <img src="${createLink(action:'path',controller:'DynImage',id:stationInstance.id) }" class="img-thumbnail" style="width: 220px; height:220px"/>
					</div>
					<div style="float:left">
					 <a href="${createLink(action:'deletePic',controller:'station',id:stationInstance.id)}">
						 <span class="glyphicon glyphicon-remove bg-info" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除图片"></span>   
					 </a>
					</div>				 
							
                  </dd>
               </dl>
               </g:if>   
               
               
               <dl class="dl-horizontal">
						<dt>操作</dt>
						<dd>
						  <a href="${createLink(action:'delete',controller:'station',id:stationInstance?.id)}" onclick="return confirm('${message(code: 'default.confirm.message', default: 'Are you sure?')}');"><input type="button" class="btn btn-info" value="删除站点"></a>&nbsp;&nbsp;
		 <g:link action="edit" id="${stationInstance?.id}" data-toggle="modal" data-target="#edit">
		 <%--<span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新站点"></span>--%>
		          <input type="button" class="btn btn-info" value="更新站点">   
		 </g:link>
				<div class="modal fade" id="edit" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                                
                           </div>
                          </div>
                      </div>	
						</dd>
						    
               </dl>
               
                </div>  
                   
                   
                   
           </div>     
          
       </div>
	</body>
</html>
