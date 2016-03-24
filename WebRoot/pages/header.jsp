<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/titlebar.css" rel="stylesheet">
  
  </head>
  
  <body>
  
  
  <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">BBS技术论坛</a>
            </div>
            <% String username  = (String)session.getAttribute("username");
            System.out.println("一登陆的用户名："+username);
            if (username == null){
             %>                                 
            <ul class="nav navbar-nav navbar-right user">
                <li><a href="<%=request.getContextPath()%>/login.jsp">登陆</a></li>
                <li><a href="<%=request.getContextPath()%>/regist.jsp">注册</a></li>
            </ul>
            <p class="navbar-text navbar-right">尊敬的游客您好！</p>
            
	      
   
            <%}
            else {
             %>
               <ul class="nav navbar-nav navbar-right user">

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <%=username%> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="<%=path+"/pages/change-info.jsp"%>">设置</a></li>
                            <li><a href="<%=path+"/pages/mypost.jsp"%>">个人中心</a></li>
                            <li class="divider"></li>
                            <li><a href="<%=path+"/logout.action"%>">退出登陆</a></li>
                        </ul>
                    </li>
                </ul>
                 <p class="navbar-text navbar-right">尊敬的用户您好！</p>
                 
                <%
                }
             %>
                <form class="navbar-form navbar-right" role="search" action="<%=request.getContextPath()%>/search.action">
		       <div class="input-group">
	         <input type="text" class="form-control" name="keywords" placeholder="search">
	        <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span> </span>
	     		 </div>
      		</form> 
            </nav>
  
  </body>
</html>
