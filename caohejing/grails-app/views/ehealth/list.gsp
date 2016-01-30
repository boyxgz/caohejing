
<%@ page import="com.surelution.medical.Ehealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<g:set var="entityName" value="${message(code: 'ehealth.label', default: 'Ehealth')}" />
		<title><g:message code="default.aalist.label" args="[entityName]" /></title>
		<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap.css">
       <link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap-theme.min.css">
        <script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
        <script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <style type="text/css">
	.main-asider{ width:15%; height:100%;min-height:850px; background-color:#383E4C; float:left;}
	   
  .list-page{
    margin-left:-20px;
     padding-top:2%;
  }
  
  .currentStep{float:left;border: 1px solid #DDDDDD;display:block;
	   height:25px;
	   width:25px;
	   text-align:center;
	   background-color: #36A9E0;
	   color:white;
	   }
	.step{
	   display:block;
	   height:25px;
	   width:25px;
	   float:left;
	   text-align:center;
	   border: 1px solid #DDDDDD;
	}
	
	.nextLink{border: 1px solid #DDDDDD;display:block;
	   height:25px;
	   width:35px; float:left;}   
	   .prevLink{
	     border: 1px solid #DDDDDD;display:block;
	   height:25px;
	   width:35px; float:left;
	   }
	   
</style>
<link href="${resource(dir:'css',file:'all.css') }" type="text/css" rel="stylesheet"/>
		
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
                  <div class="te">健康E站表</div>
               </div>
               <div class="main_content">
                   <div class="c1" style="height: 60px;">
                      <div style="float:left;">
                          <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
	
			<g:link class="create" action="create" data-toggle="modal" data-target="#myModal"><g:message code="default.new.label" args="[entityName]" /></g:link></div>
			<form class="form-inline" action="list">
  
 <div class="input-group" style="float:left; margin-left:60px;">
      <input type="text" name="ehealthName" value="${params.ehealthName }" class="form-control" placeholder="疾病名称" required autofocus>
      <span class="input-group-btn">
        <button type="submit" class="btn btn-warning">搜索</button>
      </span>
</div>
</form>
  <div style="float:left;margin-left:30px;" >
                <form action="list">
                                  <g:select class="sel" id="type" name="typeName" from="${com.surelution.medical.Type.list()}" optionValue="name" optionKey="id" required="" value="${params.typeName }"/>
                                  <button type="submit" class="btn btn-warning">搜索</button>
                               </form>
			 </div>
			<div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                           </div>
                          </div>
                      </div>
                      
                   </div>
                   <div class="tab">
                       <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th><g:message code= "ehealth.name.label" default= "Name"/></th>
        <th><g:message code="ehealth.type.label" default="Type" /></th>
        <th><g:message code="ehealth.fileUrl.label" default="File Url"/></th> 
        <th>操作</th>
      </tr>
    </thead>
    <tbody>
    <g:each in="${ehealthInstanceList}" status="i" var="ehealthInstance">
      <tr>
        <td width="17%">${fieldValue(bean: ehealthInstance, field: "name")}</td>
        <td width="10%">${ehealthInstance.type.name}</td>
        <td>${fieldValue(bean: ehealthInstance, field: "fileUrl")}</td>
        <td width="7%">
            <a href="${createLink(action:'delete',controller:'ehealth',id:ehealthInstance.id)}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><span class="glyphicon glyphicon-trash" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="删除 E站"></span></a>	 
		&nbsp;&nbsp;
		 <g:link action="edit" id="${ehealthInstance?.id}" params="${params}" data-toggle="modal" data-target="#${ehealthInstance?.id}"><span class="glyphicon glyphicon-pencil" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="更新E站"></span></g:link></td>
		 
		 <div class="modal fade" id="${ehealthInstance?.id}" role="dialog">
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
       
             <div class="list-page">
                  <g:paginate total="${ehealthInstanceTotal}" class="pagination" params="${params}"/>
			</div>
			
	
			
			 
             </div>
                    
      
                   </div>
             </div>     
          </div>
 
	</body>
</html>
