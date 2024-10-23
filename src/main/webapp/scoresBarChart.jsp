<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考试系统--成绩柱状图</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css">
<link type="text/css" rel="stylesheet" href="css/material_icons.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
body {
	font-family: Roboto, "Microsoft YaHei";
}
.my-opacity{
	opacity:0.6;
}
.my-opacity:hover{
	opacity:1;
}
</style>
</head>
<body>
	<%@ include file="include/header.jsp" %>

	<div id="main">
		<div class="container" style="padding: 20px;">
			<form name="form1" method="post" action="scorestatsforsearch">
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
                    <div class="input-field col l6 m6 s12">
                        <i class="material-icons prefix small">description</i>
                        <select id="examNameSearch" name="examNameSearch">
                        <option value="" disabled selected>选择</option>
                        <s:iterator value="examNameList" var="examNameItem" status="st">
                        	<option value="<s:property value="#st.index+1"/>" <s:if test='examNameSearch==((#st.index+1)+\"\")'>selected</s:if> ><s:property/></option>
                        </s:iterator>
                        </select>
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
			
			<div class="divider" style="height: 20px; background: #fff;"></div>
			<div class="row">
			
				<img src="charts/scoresbarchart.action?classSearch=<s:property value="classSearch"/>&examNameSearch=<s:property value="examNameSearch"/>">
				
			</div>
			
			<div class="row">
				<s:if test="examAbsentStudentList!=null && examAbsentStudentList.size()>0">
					该班级该次考试缺考的学生有：
					<table>
						<s:iterator value="examAbsentStudentList" status="st">
							<tr>
								<td><s:property value="#st.index+1"/>.</td>
								<td><s:property value="name"/>(学号：<s:property value="registerNo"/>)</td>
							</tr>
						</s:iterator>
					</table>
				</s:if>
				<s:else>
					该班级没有缺考学生。
				</s:else>
			</div>
		</div>
	</div>

<%@ include file="include/footer.jsp"%>
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
</body>
</html>