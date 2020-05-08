<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	pageContext.setAttribute("ALL_PATH", request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+request.getContextPath());
%>
<script type="text/javascript" src="${APP_PATH}/static/js/jquery-1.12.4.min.js"></script>
<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	  <div class="container-fluid">	 
	   	  <div class="row" style="height:15px"></div>	   			  		  
		  <div class="row">
			<div class="col-md-1" >
				 <ul class="nav nav-pills"  id="myTab">
	                  <li>
	                      <a href="#menu_list" data-toggle="tab">
	                          <button type="button" class="btn btn-info ">菜单管理</button>
	                      </a>
	                  </li>
	                  <li>
	                      <a href="#role_list" data-toggle="tab">
	                          <button type="button" class="btn btn-info ">角色管理</button>
	                      </a>
	                  </li>
	                  <li>
	                      <a href="#user_list" data-toggle="tab">
	                          <button type="button" class="btn btn-info ">用户管理</button>
	                      </a>
	                  </li>
	               </ul>
			</div>
			<div class="col-md-11" >
				<div class="tab-content" id="myTabContent">
	                   <div class="tab-pane fade " id="menu_list">
	                    <%@ include file="menu_list.jsp"%>                    
	                   </div>
	                   <div class="tab-pane fade " id="role_list">
	                       <%@ include file="role_list.jsp"%>
	                   </div>
	                   <div class="tab-pane fade " id="user_list">
	                       <%@ include file="user_list.jsp"%>
	                   </div>
	               </div>
			</div>
		</div>				  
	  </div>
	<script>
   		$(function () {
   			//默认第一个标签是激活的
       		 $('#myTab li:eq(0) a').tab('show');
    	});
	</script>

</body>
</html>