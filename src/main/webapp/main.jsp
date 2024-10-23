 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>考试系统--主页</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="css/fontawesome-all.min.css">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css">
    <link type="text/css" rel="stylesheet" href="css/material_icons.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        body {
            font-family: Roboto, "Microsoft YaHei";
         .my-opacity{
        	opacity:0.6;
        }
        .my-opacity:hover{
        	opacity:1;
        }
        a{
			color: #2e7d32;
		}
    </style>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<div id="main" style="background-image: url('images/background.jpg');  background-size: cover;  height: 93vh">
	    <div class="container" style="padding: 20px;">
			<s:if test="#session['USER_INFO']!=null">
	    	<div class="divider" style="height:20px;background:transparent;"></div>
	        <div class="row">
				<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==0">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity" >
		                    <a href="<s:url action="studentexamlist"/>"><img class="activator" src="images/exampaper2.jpg"></a>
		                </div>
		                <div class="card-content">
		                    <a href="<s:url action="studentexamlist"/>">
		                    <span class="card-title activator light-green-text text-darken-4">试题列表
		                    <i class="fas fa-sign-in-alt fa-lg right light-green-text"></i></span></a>
		                    <p><a href="<s:url action="studentexamlist"/>">列出所有已有的试题列表</a></p>
		                </div>
		            </div>
	        	</div>
				</s:if>
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
	        	<div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="questionTypes.jsp"><img class="activator" src="images/questiontype2.jpg"></a>
		                </div>
		                <div class="card-content">
		                	<a href="questionTypes.jsp">
		                    <span class="card-title activator light-green-text text-darken-4">题型管理
		                    <i class="fas fa-sign-in-alt fa-lg right light-green-text"></i></span></a>
		                    <p><a href="questionTypes.jsp">查看选择题、填空题、判断题、简答题</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="examComposeTypes.jsp"><img class="activator" src="images/papergenerator2.jpg"></a>
		                </div>
		                <div class="card-content">
		                	<a href="examComposeTypes.jsp">
		                    <span class="card-title activator light-green-text text-darken-4">抽题组卷
		                    <i class="fas fa-sign-in-alt fa-lg right light-green-text"></i></span></a>
		                    <p><a href="examComposeTypes.jsp">从题库中根据策略抽题组卷</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>

				<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="importData.jsp"><img class="activator" src="images/importexport2.jpg"></a>
		                </div>
		                <div class="card-content">
		                	<a href="importData.jsp">
		                    <span class="card-title activator light-green-text text-darken-4">导入导出
		                    <i class="fas fa-sign-in-alt fa-lg right light-green-text"></i></span></a>
		                    <p><a href="importData.jsp">用户、试题等数据的导入导出</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">
		        <div class="col s12 m4">
		            <div class="card">
		                <div class="card-image waves-effect waves-block waves-light my-opacity">
		                    <a href="statsTypes.jsp"><img class="activator" src="images/datastats2.png"></a>
		                </div>
		                <div class="card-content">
		                    <a href="statsTypes.jsp">
		                    <span class="card-title activator light-green-text text-darken-4">试题分析
		                    <i class="fas fa-sign-in-alt fa-lg right light-green-text"></i></span></a>
		                    <p><a href="statsTypes.jsp">按照题型、知识点等进行统计分析</a></p>
		                </div>
		            </div>
	        	</div>
	        	</s:if>
	        	
	        </div>
			</s:if>
	    </div>
	</div>
	
<%--	<s:if test="#session['USER_INFO']!=null && #session['USER_INFO'].role==1">--%>
<%--	<a href="modifysettings" title="修改系统设置"><i class="fas fa-wrench fa-lg right blue-text"></i></a> | --%>
<%--	<a href="pushbroadcastmessage" title="向在线用户推送广播消息"><i class="fas fa-share-square fa-lg right red-text"></i></a>--%>
<%--	</s:if>--%>
	
	<%@ include file="include/footer.jsp" %>
    
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
	<script>
	    $(document).ready(function () {
	        $('.modal-trigger').leanModal({
	            dismissible: true, //是否点模态对话框外面就可以关闭
	            opacity: 0.6, //接近1，不透明
	        });//使用模态对话框，必须有这句
	        
	        $(".button-collapse").sideNav({
	            menuWidth: 200, // Default is 240
	            edge: 'left', // Choose the horizontal origin
	            closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
	        });
	        
	        $(".collapsible").collapsible({
	            accordion: true
	        });
	    })
	   	
	</script>

	<s:if test="hasActionErrors()">
	<script type="text/javascript">
		toast1();
		function toast1(){
			var errorStr='<s:property value="actionErrors[0]"/>';
		    var $toastContent = $('<span class="red-text lighten-5"><h4>'+errorStr+'</h4></span>');
		    Materialize.toast($toastContent, 4000, 'rounded');
		}
	</script>
	</s:if>

	<s:if test="hasActionMessages()">
	<script type="text/javascript">
		toast2();
		function toast2(){
			var msgStr='<s:property value="actionMessages[0]"/>';
		    var $toastContent = $('<span class="teal-text lighten-5"><h4>'+msgStr+'</h4></span>');
		    Materialize.toast($toastContent, 4000, 'rounded');
		}
	</script>
	</s:if>

</body>
</html>