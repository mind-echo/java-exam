<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>考试系统--试卷详细</title>
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="css/fontawesome-all.min.css">
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css">
	<link type="text/css" rel="stylesheet" href="css/material_icons.css">
	<link type="text/css" rel="stylesheet" href="css/nouislider.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css">
		body {
			font-family: Roboto, "Microsoft YaHei";
			font-size: large;
		}
		.mytable{
			width: 80%;
			margin: 0 auto;
		}
		#examtime{
			position:fixed;
			bottom: 10px;
			right: 10px;
			background-color: #ee1111;
			color: #eeee11;
			padding: 10px;
			border-radius: 5px;
			font-size: medium;
		}
		#positioner{
			position:fixed;
			top: 80px;
			right: 10px;
			width: 10%;
			color: #1111ee;
			background-color: #c0ca33;
			padding: 10px;
			border-radius: 5px;
			font-size: medium;
		}
		.answeredTag{
			background-color: #1f1;
			color:#1d1;
		}
	</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<div class="container">
	<h2>选择题</h2>
	<table class="mytable">
	<s:iterator value="choiceList" status="st" var="item">
		<tr style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
			<td><s:property value="#st.index+1"/>. </td>
			<td style="text-align:left;"><s:property value="content"/></td>
		</tr>
		<tr style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
			<td colspan="2">
				<table>
					<tr><td>A. </td><td><s:property value="choiceA"/></td></tr>
					<tr><td>B. </td><td><s:property value="choiceB"/></td></tr>
					<tr><td>C. </td><td><s:property value="choiceC"/></td></tr>
					<tr><td>D. </td><td><s:property value="choiceD"/></td></tr>
				</table>
			</td>
		</tr>
		<tr><td colspan="2" style="height:20px;"></td></tr>
	</s:iterator>
	</table>
	
	<h2>填空题</h2>
	<table class="mytable">
	<s:iterator value="blankFillingList" status="st" var="item">
		<tr style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
			<td><s:property value="#st.index+1"/>. </td>
			<td style="text-align:left;"><s:property value="content"/></td>
		</tr>
		<tr><td colspan="2" style="height:20px"></td></tr>
	</s:iterator>
	</table>
	
	<h2>判断题</h2>
	<table class="mytable">
	<s:iterator value="judgeList" status="st" var="item">
		<tr style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
			<td><s:property value="#st.index+1"/>. </td>
			<td style="text-align:left;"><s:property value="content"/></td>
		</tr>
		<tr><td colspan="2" style="height:20px"></td></tr>
	</s:iterator>
	</table>

	<h2>简答题</h2>
	<table class="mytable">
	<s:iterator value="shortAnswerList" status="st" var="item">
		<tr style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
			<td><s:property value="#st.index+1"/>. </td>
			<td style="text-align:left;"><s:property value="content"/></td>
		</tr>
		<tr><td colspan="2" style="height:20px"></td></tr>
	</s:iterator>
	</table>
	</div>
</body>
</html>