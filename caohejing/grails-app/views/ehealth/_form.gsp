<%@ page import="com.surelution.medical.Ehealth" %>


<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'name', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="name">
		<g:message code="ehealth.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="疾病名称" name="name" required="" value="${ehealthInstance?.name}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'type', 'error')} required">
    <dl class="dl-horizontal">
	   <dt><label for="type">
		<g:message code="ehealth.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	    <g:select id="type" name="type.id" from="${com.surelution.medical.Type.list()}" optionValue="name" optionKey="id" required="" value="${ehealthInstance.type?.id}" class="many-to-one"/>
	      </div>
	   </dd>
	</dl>	

</div>

<div class="fieldcontain ${hasErrors(bean: ehealthInstance, field: 'fileUrl', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="fileUrl">
		<g:message code="ehealth.fileUrl.label" default="File Url" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	    <%--<g:textArea name="fileUrl" value="${ehealthInstance?.fileUrl }"></g:textArea>--%>
	    <textarea class="form-control" rows="10" name="fileUrl">${ehealthInstance?.fileUrl }</textarea>
	      </div>
	   </dd>
	</dl>	
</div>


