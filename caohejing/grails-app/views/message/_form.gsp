<%@ page import="com.surelution.medical.Message" %>


<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'keyWord', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="keyWord">
		<g:message code="message.keyWord.label" default="Key Word" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="关键字" name="keyWord" required="" value="${messageInstance?.keyWord}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'message', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="message">
		<g:message code="message.message.label" default="message" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	      <%--<g:textArea name="message" value="${messageInstance?.message }" style="width:400px;float:center;height:300px;"></g:textArea>--%>
	     <textarea class="form-control" rows="15" name="message">${messageInstance?.message }</textarea>
	      </div>
	   </dd>
	</dl>	
</div>
