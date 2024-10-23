<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考试系统--成绩列表</title>
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
		<div class="container" style="min-height:350px;">
		
			<form name="form1" method="post" action="examscorelistforsearch">
				<div class="row" style="margin-top: 10px;">
                    <div class="input-field col l4 m4 s12">
                        <i class="material-icons prefix small">spellcheck</i>
                        <select multiple id="classSearch" name="classSearch">
                        <option value="" disabled>选择</option>
                        <s:iterator value="gradeList" var="gradeItem">
                        	<option value="<s:property value="id"/>" <s:if test='classSearch.contains(\"\"+#gradeItem.id)'>selected</s:if>><s:property value="name"/></option>
                        </s:iterator>
                        </select>
                        <label for="classSearch">班级</label>
                    </div>
                    <div class="input-field col l4 m4 s12">
                        <i class="material-icons prefix small">description</i>
                        <input type="text" placeholder="输入考试名称" id="examNameSearch" name="examNameSearch" 
                        value="<s:property value="examNameSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="examNameSearch">考试名称</label>
                    </div>
                    <div class="input-field col l2 m4 s12 vertical-align">
						<button class="red darken-4 waves-effect waves-teal btn-flat" type="submit">
							<span class="yellow-text text-lighten-1">搜索
			        		<i class="material-icons right">search</i></span>
			    		</button>
			        </div>
                </div>
			</form>
			
			<table class="mytable">
				<thead>
					<tr>
						<th>序号</th>
						<th>姓名</th>
						<th>成绩</th>
						<th>考试名称</th>
						<th>考试类型</th>
					</tr>
				</thead>
				<s:iterator value="examScoreList" status="st" var="item">
					<tr
						style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
						<td><s:property value="#st.index+1" /></td>
						<td><s:property value="student.name" /></td>
						<td>
							<a class="namelink"
							href="<s:url action="examdetailwithanswer"><s:param name="stu_id" value="%{student.id}"></s:param><s:param name="exam_id" value="%{exam.id}"></s:param><s:param name="exam_strategy_id" value="%{examStrategy.id}"></s:param></s:url>">
								<s:property value="score" />
							</a>
						</td>
						<td><s:property value="exam.name" /></td>
						<td><s:if test="exam.type==1">随机抽题组卷</s:if><s:else>固定组卷</s:else></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
	<%@ include file="include/footer.jsp" %>
	
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
	<script>
	    $(document).ready(function () {
	    	$('select').material_select();
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
	<s:debug></s:debug>
</body>
</html>