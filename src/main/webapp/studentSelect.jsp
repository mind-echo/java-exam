<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考试系统--抽题组卷--选择学生</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css">
<link type="text/css" rel="stylesheet" href="css/material_icons.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
body {
	font-family: Roboto, "Microsoft YaHei";
}

.mytable {
	border-collapse: collapse;
	border-bottom: 2px solid #ddd;
}

.mytable td {
	padding: 5px 10px;
}

.namelink a {
	text-decoration: none;
}

.namelink a:LINK {
	color: #12f;
}

.namelink a:VISITED {
	color: #a2e;
}

.namelink a:HOVER {
	color: #17f;
}
</style>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<div id="main">
		<form name="form1" method="post" action="studentsearchlist">
		<input type="hidden" name="selectStudentFor" value="<s:property value='selectStudentFor'/>">
		<div class="container" style="margin-top: 20px;">
			<input type="hidden" name="examSelect" value='<s:property value="examSelect"/>'>
			<input type="hidden" name="strategySelect" value='<s:property value="strategySelect"/>'>
				<div class="row">
                    <div class="input-field col l3 m4 s12">
                        <i class="material-icons prefix small">info_outline</i>
                        <input type="text" placeholder="输入前几位或完整学号" id="regNoSearch" name="regNoSearch" 
                        value="<s:property value="regNoSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="regNoSearch">学号</label>
                    </div>
                    <div class="input-field col l2 m4 s12">
                        <i class="tiny material-icons prefix ">toc</i>
                        <input type="text" placeholder="输入姓名中包含的字符" id="nameSearch" name="nameSearch" 
                        value="<s:property value="nameSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="nameSearch">姓名</label>
                    </div>
                    <div class="input-field col l3 m4 s12">
                    	<span class="valign" style="display:inline-block;margin:0 20px;"><label>性别:</label></span>
                        <!-- i class="tiny material-icons prefix ">toc</i-->
                        <input type="radio" class="with-gap valign" id="male" name="genderSearch" value="true">
                        <label for="male">男</label>
                        <input type="radio" class="with-gap valign" id="female" name="genderSearch" value="false">
                        <label for="female">女</label>
                    </div>
                    <div class="input-field col l2 m4 s12">
                        <i class="material-icons prefix small">description</i>
                        <input type="text" placeholder="输入班级名中包含的字符" id="gradeSearch" name="gradeSearch" 
                        value="<s:property value="gradeSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="password">班级</label>
                    </div>
                    <div class="input-field col l2 m4 s12 vertical-align">
						<button class="red darken-4 waves-effect waves-teal btn-flat" type="submit">
							<span class="yellow-text text-lighten-1">搜索
			        		<i class="material-icons right">search</i></span>
			    		</button>
			        </div>
                </div>
			<table class="mytable">
				<thead>
					<tr>
						<th width="100px">
							<input type="checkbox" name="selectAll" id="selectAll" onclick="selectAllStudent()"><label for="selectAll">序号</label>
						</th>
						<th width="120px">学号</th>
						<th>姓名</th>
						<th width="50px">性别</th>
						<th>班级</th>
					</tr>
				</thead>
				<s:iterator value="studentList" status="st" var="item">
					<tr
						style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
						<td>
							<input name="studentChecked" id="studentChecked<s:property value="id"/>" type="checkbox" value="<s:property value="id"/>"/>
							<label for="studentChecked<s:property value="id"/>"><s:property value="#st.index+1" /></label>
						</td>
						<td><s:property value="registerNo"/></td>
						<td><s:property value="name" /></td>
						<td><s:if test="gender">男</s:if><s:else>女</s:else></td>
						<td><s:property value="grade.name" /></td>
					</tr>
				</s:iterator>
			</table>
			<button class="red darken-4 waves-effect waves-teal btn-flat" type="button" onclick="form1.action='getselectedstudent';form1.submit();">
				<span class="yellow-text text-lighten-1">选定参与考试的学生
	       		<i class="material-icons right">search</i></span>
	   		</button>
		</div>
		</form>
	</div>
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
	   	
	    function selectAllStudent(){
	    	var theCheck = document.getElementById("selectAll");
	    	var allCheckBox = document.getElementsByName("studentChecked");
	    	for (var i=0; i<allCheckBox.length; i++){
	    		if(theCheck.checked== true){
	    			allCheckBox[i].checked= true;
	    		}else{
	    			allCheckBox[i].checked= false;
	    		}
	    	}
	    }
	</script>
</body>
</html>