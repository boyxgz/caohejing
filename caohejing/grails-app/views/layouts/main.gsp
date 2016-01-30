<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favoc.png')}" type="image/x-icon">
		<%--<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">--%>
		<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap.css">
       <link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/css/bootstrap-theme.min.css">
       <script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
       <script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
       <style type="text/css">
	
         </style>
         <link href="${resource(dir:'css',file:'all.css') }" type="text/css" rel="stylesheet"/>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	<div>
	   <header class="main-header">
           <div class="logo">
              <span>漕河泾卫生服务中心</span>
           </div>
           <nav class="navbar navbar-static-top"> 
               <div class="title">
                   当前用户：<sec:username />&nbsp;&nbsp; 
                   
                   <div class="btn-group">
    <a href="${createLink(action:'showChangePwd',controller:'user') }" data-toggle="modal" data-target="#changePwd">更改密码&nbsp;&nbsp; </a>
   <div class="modal fade" id="changePwd" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content"> 
                                
                           </div>
                          </div>
                      </div>
  </div>
                   
                     
                   <a href="${createLink(action:'index', controller:'logout')}"> 退出</a>
               </div>
           </nav>
       </header>  
		    	<aside class="main-asider">
           <section>
               <%--<div class="side">
                  <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for...">
          <span class="input-group-btn"><button class="btn" type="button">Go!</button></span>
    </div>
               </div>
               --%><div class="side1">weixinhoutai</div>
               <ul class="main-ul">
                  <li>
                      <ul>
                      <sec:ifAnyGranted roles="ROLE_ADMIN">
                        <li class="li1"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                  <g:link url="${resource(dir:'user')}"  ><span style="color: white">用户管理</span></g:link></li>
                    <li class="li2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                   <g:link url="${resource(dir:'station')}"><span style="color: white">维护站点</span></g:link></li>
                    <li class="li2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                  <g:link url="${resource(dir:'dbMaintain')}" ><span style="color: white">上传数据库文件</span></g:link></li>
                  <li class="li2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                  <g:link url="${resource(dir:'ehealth')}"><span style="color: white">管理健康E站</span></g:link></li>
                  <li class="li2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                  <g:link url="${resource(dir:'doctor')}"><span style="color: white">医生介绍</span></g:link></li>
                  <li class="li2"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                  <g:link url="${resource(dir:'message')}"><span style="color: white">信息回复管理</span></g:link></li>
                    </sec:ifAnyGranted>
                      </ul>
                  </li>
               </ul>
           </section>
       </aside>
	         </div>      
		<g:layoutBody/>
		
		<div class="footer" role="contentinfo">
		   <p><strong>Copyright</strong>&nbsp;&copy;&nbsp;<strong>2015</strong>-上海悍思企业管理与咨询有限公司.All&nbsp;Rights&nbsp;Reserved</p>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
		
	</body>
</html>
