<%@ page import="com.surelution.medical.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="dbdile.label" /></title>
		<script type="text/javascript" src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }"></script>
		
		<script type="text/javascript">
		   $("document").ready(function(){
		     $("#fileUpload").change(function() {
		        var fileName = $("#fileUpload").val();
		        var typeName = (fileName.substring(fileName.lastIndexOf(".")+1,fileName.length)).toLowerCase(); 
		        if(typeName!="mdb"){
                      alert("上传数据库文件格式不正确！请重新上传。")
                      window.location.href="${createLink(action:'index',controller:'dbMaintain')}"
			        }
		    });
		});
          
			function checkForm(){
				var fileName = $("#fileUpload").val()
				if(fileName==null || fileName==""){
                   alert("请选择数据库文件");
                   window.location.href="${createLink(action:'index',controller:'dbMaintain')}"            
					}
				}
		</script>
		
		<style type="text/css">
		input[type=radio] {
  -webkit-appearance: none;
  appearance: none;
  width: 13px;
  height: 13px;
  margin: 0;
  cursor: pointer;
  vertical-align: bottom;
  background: #fff;
  border: 1px solid #dcdcdc;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  position: relative;
  }
		    input[type=radio]:checked {
  background: #fff;
  }
  input[type=radio]:checked::after {
  content: '';
  display: block;
  position: relative;
  top: 3px;
  left: 3px;
  width: 7px;
  height: 7px;
  background: #666;
  -webkit-border-radius: 1em;
  -moz-border-radius: 1em;
  border-radius: 1em;
  }
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
                  <div class="te">请选择需要上传的数据库文件</div>
                  <div>
		              <p>注意：</p>
		              <p>只能上传.mdb文件</p>
		          </div>
               </div>
               <div>
                  
		<br>
		
		<div class="row" style="margin-top: 40px; margin-left: 20px;">
  <div class="col-lg-4" style="border:1px solid #C5CBD7">
  <g:uploadForm>
    <div class="input-group">
      
       <input type="file" name="dbFile" accept=".mdb" id="fileUpload" class="bg-info btn" style="height:35px; width: 320px;"/>
     
    </div><!-- /input-group -->
    <br>
    <div>
                               文件描述： <textarea rows="5" name="description" class="form-control"></textarea>
      </div>
      <br>
       <input type="submit" name="sub" value="上传" class="btn btn-md btn-primary btn-block btn-info" style="margin-top:5px; margin-bottom:5px;" onclick="checkForm()"/>      
     </g:uploadForm>
  </div><!-- /.col-lg-6 -->
  
  
  <div class="col-lg-8">
    <g:form action="selectDbFile" method="post" controller="DbMaintain">
       <table class="table table-bordered table-striped">
    <thead>
      <tr>
       <th><g:message code="lable.default.dateCreated" default="上传时间"/></th>
       <th><g:message code="lable.default.originalFileName" default="文件名称"/></th>
       <th><g:message code="lable.default.description" default="文件描述"/></th>
       <th><g:message code="lable.default.action" default="操作"/></th>
      </tr>
    </thead>
    <tbody>
    <g:each in="${com.surelution.medical.DbFile.list()}" var="file">
      <tr>
        <td><g:formatDate format="yyyy-MM-dd HH:mm" date="${file.dateCreated}"></g:formatDate></td>
        <td>${file.origName }</td>
        <td>${file.description }</td>
        <td>
          <span class="pay_list_c1 on">
           <input type="radio" name="selectFile" value="${file.id }" data-toggle="tooltip" data-placement="top" title="更新数据库文件"
             class="minimal" class="radioclass"
             <g:if test="${file.enabled }">
                checked="checked"  
             </g:if>
           > 
         </span>
          &nbsp;&nbsp;
           <input type="hidden" value="${file.id }" name="fileId">
         <a href="${createLink(action:'downLoad',controller:'DbMaintain',id:file.id)}"><span class="glyphicon glyphicon-download-alt" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="下载数据库文件"></span></a>
        </td>
      </tr> 
    </g:each>
     <tr><td colspan="4">
           <g:submitButton name="update" value="更新数据库文件"  class="btn btn-info"/>
             
            <%--<g:actionSubmit value="更新数据库文件" action="selectDbFile" class="btn btn-info"/>--%>
     </td></tr>
    </tbody>
  </table>   
  </g:form>
  </div>
  </div>
       
            
           </div>      
       </div>	
		
	</body>
</html>




