<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试系统--试卷提交概览</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="css/materialize.min.css">
<link type="text/css" rel="stylesheet" href="css/material_icons.css">
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
</style>
<script type="text/javascript">
	function examHandIn(){
		if(window.confirm("正式交卷后，将会进行自动评分，且不可再次提交。确定正式交卷吗？")){
			form1.submit();
		}
	}
</script>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<div class="container">
	<form class="col s12" name="form1" method="post" action="examhandin">
	<h4>答题情况</h4>
	<table class="mytable">
		<tr>
			<td>共有<s:property value="submittedAnswerMap.CHOICE.size "/>道选择题</td>
			<td style="<s:if test="submittedAnswerMap.CHOICE.size - submittedCntMap.CHOICE>0">color: red;</s:if><s:else>color:blue;</s:else>">
				你已经答了<s:property value="submittedCntMap.CHOICE "/>道，未答<s:property value="submittedAnswerMap.CHOICE.size - submittedCntMap.CHOICE "/>道。
			</td>
		</tr>
		<tr>
			<td>共有<s:property value="submittedAnswerMap.BLANK_FILLING.size "/>道填空题</td>
			<td style="<s:if test="submittedAnswerMap.BLANK_FILLING.size - submittedCntMap.BLANK_FILLING>0">color: red;</s:if><s:else>color:blue;</s:else>">
				你已经答了<s:property value="submittedCntMap.BLANK_FILLING "/>道，未答<s:property value="submittedAnswerMap.BLANK_FILLING.size - submittedCntMap.BLANK_FILLING "/>道。
			</td>
		</tr>
		<tr>
			<td>共有<s:property value="submittedAnswerMap.JUDGE.size "/>道判断题</td>
			<td style="<s:if test="submittedAnswerMap.JUDGE.size - submittedCntMap.JUDGE>0">color: red;</s:if><s:else>color:blue;</s:else>">
				你已经答了<s:property value="submittedCntMap.JUDGE "/>道，未答<s:property value="submittedAnswerMap.JUDGE.size - submittedCntMap.JUDGE "/>道。
			</td>
		</tr>
		<tr>
			<td>共有<s:property value="submittedAnswerMap.SHORT_ANSWER.size "/>道简答题</td>
			<td style="<s:if test="submittedAnswerMap.SHORT_ANSWER.size - submittedCntMap.SHORT_ANSWER>0">color: red;</s:if><s:else>color:blue;</s:else>">
				你已经答了<s:property value="submittedCntMap.SHORT_ANSWER "/>道，未答<s:property value="submittedAnswerMap.SHORT_ANSWER.size - submittedCntMap.SHORT_ANSWER "/>道。
			</td>
		</tr>
	</table>
	
	<div class="row">
		<div class="divider" style="height: 10px;background-color: #fff;"></div>
		<div class="col s12">
			<button class="red darken-4 waves-effect waves-teal btn-flat" 
			type="button" name="action"
			onclick="form1.action='examdetail2';form1.submit();">
				<span class="yellow-text text-lighten-1">返回继续答题
        		<i class="material-icons right">loop</i></span>
    		</button>
			<button class="teal darken-4 waves-effect waves-teal btn-flat" type="button" name="action" onclick="examHandIn()">
				<span class="yellow-text text-lighten-1">正式交卷
        		<i class="material-icons right">send</i></span>
    		</button>
   		</div>
  	</div>
	</form>
	</div>
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<%@ include file="include/footer.jsp" %>
</body>
</html>