<%@ page import="com.surelution.medical.Station" %>


<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'name', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="name">
		<g:message code="station.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="站点名称" name="name" required="" value="${stationInstance?.name}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'phone', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="phone">
		<g:message code="station.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="站点电话" name="phone" required="" value="${stationInstance?.phone}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'serviceItem', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="serviceItem">
		<g:message code="station.serviceItem.label" default="Service Item" />
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="服务项目" name="serviceItem" value="${stationInstance?.serviceItem}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'serviceTime', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="serviceTime">
		<g:message code="station.serviceTime.label" default="Service Time" />
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="服务时间" name="serviceTime" value="${stationInstance?.serviceTime}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'stationAddress', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="stationAddress">
		<g:message code="station.stationAddress.label" default="Station Address" />
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="站点地址" name="stationAddress" value="${stationInstance?.stationAddress}">
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: stationInstance, field: 'to_coord', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="to_coord">
		<g:message code="station.to_coord.label" default="Tocoord" />
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <input type="text" class="form-control" placeholder="站点地址" name="to_coord" value="${stationInstance?.to_coord}">&nbsp;&nbsp;
	       <a href="http://lbs.qq.com/tool/getpoint/index.html" target="_blank" style="color: red; font-size: 10px;">获取经纬度</a>
	      </div>
	   </dd>
	</dl>	
</div>

