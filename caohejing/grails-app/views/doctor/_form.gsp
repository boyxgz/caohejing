<%@ page import="com.surelution.medical.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'name', 'error')} required">
	<dl class="dl-horizontal">
	   <dt><label for="name">
		<g:message code="doctor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="医生名称" name="name" required="" value="${doctorInstance?.name}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'introduction', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="name">
		<g:message code="doctor.introduction.label" default="Introduction" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="医生介绍" name="introduction" required="" value="${doctorInstance?.introduction}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'station', 'error')} required">	
	<dl class="dl-horizontal">
	   <dt><label for="station">
		<g:message code="doctor.station.label" default="Station" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	    <g:select id="station" name="station.id" from="${com.surelution.medical.Station.list()}" optionValue="name" optionKey="id" required="" value="${doctorInstance?.station?.id}" class="many-to-one"/>
	      </div>
	   </dd>
	</dl>	
</div>

