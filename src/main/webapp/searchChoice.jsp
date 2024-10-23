<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>考试系统--搜索选择题</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="css/fontawesome-all.min.css">
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
		<div class="container" style="margin-top: 20px;">
			<form name="form1" method="post" onsubmit="answerCheckDetermin();" action="choicesearchlist">
			<input type="hidden" name="answerSearch2">
				<div class="row">
                    <div class="input-field col l3 m4 s12">
                        <i class="far fa-comment fa-lg  prefix"></i>
                        <input type="text" placeholder="输入题干包含的内容" id="contentSearch" name="contentSearch" 
                        value="<s:property value="contentSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="contentSearch">题干内容</label>
                    </div>
                    <div class="input-field col l3 m4 s12">
                        <i class="fas fa-list-ol fa-lg  prefix"></i>
                        <input type="text" placeholder="输入选项包含的内容" id="choiceSearch" name="choiceSearch" 
                        value="<s:property value="choiceSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="choiceSearch">选项内容</label>
                    </div>
                    <div class="input-field col l2 m4 s12">
                        <i class="far fa-question-circle fa-lg prefix"></i>
                        <select multiple name="answerSearch" id="answerSearch">
					      <option value="" disabled selected>选择</option>
					      <option value="A" <s:if test="answerSearch.contains(\"A\")">selected</s:if>>A</option>
					      <option value="B" <s:if test="answerSearch.contains(\"B\")">selected</s:if>>B</option>
					      <option value="C" <s:if test="answerSearch.contains(\"C\")">selected</s:if>>C</option>
					      <option value="D" <s:if test="answerSearch.contains(\"D\")">selected</s:if>>D</option>
					    </select>
                        <label for="answerSearch">答案</label>
                    </div>
                    <div class="input-field col l2 m4 s12">
                        <i class="far fa-file fa-lg prefix"></i>
                        <input type="text" placeholder="输入知识点" id="knowledgeSearch" name="knowledgeSearch" 
                        value="<s:property value="knowledgeSearch"/>" 
                        class="validate" style="font-size:large">
                        <label for="password">知识点</label>
                    </div>
                    <div class="input-field col l2 m4 s12 vertical-align">
						<button class="red darken-4 waves-effect waves-teal btn-flat" type="submit">
							<span class="yellow-text text-lighten-1">搜索
			        		<i class="fas fa-search fa-lg right"></i></span>
			    		</button>
			        </div>
                </div>
			</form>
			<table class="mytable">
				<thead>
					<tr>
						<th width="50px">序号</th>
						<th width="50px">名称</th>
						<th>题干</th>
						<!-- <th>选项</th> -->
						<th width="80px">答案</th>
						<th width="80px">知识点</th>
						<th width="80px">操作</th>
					</tr>
				</thead>
				<s:iterator value="questionList" status="st" var="item">
					<tr
						style="background-color:<s:if test="#st.odd">#efefef</s:if><s:else>#ffffff</s:else>">
						<td><s:property value="#st.index+pageIndex*questionList.size+1" /></td>
						<td><s:property value="name"/></td>
						<td><a class="namelink"
							href="<s:url action="choicedetail"><s:param name="qid" value="%{id}"></s:param></s:url>"><s:property
									value="content" /></a></td>
						<!-- 
						<td>
							<table class="mytable">
								<tr><td>A. <s:property value="choiceA"/></td></tr>
								<tr><td>B. <s:property value="choiceB"/></td></tr>
								<tr><td>C. <s:property value="choiceC"/></td></tr>
								<tr><td>D. <s:property value="choiceD"/></td></tr>
							</table>
						</td> 
						-->
						<td><s:property value="answer" /></td>
						<td><s:property value="knowledgePoint" /></td>
						<td>
							<s:if test=" #session['USER_INFO'].role==1">
								<a href=#  onclick='deleteChoice(<s:property value="id"/>)'>删除</a>
							</s:if>
						</td>
					</tr>
				</s:iterator>
			</table>
			<!-- 分页控件 -->
			<form name="form2" method="post">
			<input type="hidden" name="pageIndex" value="<s:property value="pageIndex"/>" /> 
			<s:if test="totalPage gt 1">
			<ul class="pagination">
				<li <s:if test="pageIndex lt 1">class="disabled"</s:if><s:else>class="waves-effect"</s:else>>
					<a href="#!" <s:if test="pageIndex gt 0">onclick="selectPage(<s:property value="pageIndex"/>)"</s:if>>
					<i class="fas fa-chevron-left fa-xs"></i></a>
				</li>
				<s:iterator var="item" begin="1" end="totalPage">
				  <s:if test="pageIndex==top-1"><li class="active"><a href="#!"><s:property/></a></li></s:if>
				  <s:else><li class="waves-effect"><a href="#!" onclick="selectPage(<s:property/>)"><s:property/></a></li></s:else>
				</s:iterator>
				<li <s:if test="pageIndex gt (totalPage-2)">class="disabled"</s:if><s:else>class="waves-effect"</s:else>>
					<a href="#!" <s:if test="pageIndex lt (totalPage-1)">onclick="selectPage(<s:property value="pageIndex+2"/>)"</s:if>>
					<i class="fas fa-chevron-right fa-xs"></i></a>
				</li>
			</ul>
			</s:if>
			</form>
			
		</div>
	</div>
	<%@ include file="include/footer.jsp" %>
	
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	
	<script>
		function answerCheckDetermin(){
			form1.answerSearch2.value=$('#answerSearch').val();
		}
		function selectPage(page){
			form2.pageIndex.value=page-1;
			form2.action="searchchoice";
			form2.submit();
		}

		function deleteChoice(id){
			if (confirm("确定要删除该选择题吗？")) {
				$.ajax({
					url: "deleteChoice",
					type: "POST",
					data: { deleteId: id },
					timeout: 60000, // 设置超时时间为 5 秒 (5000 毫秒)
					success: function() {
						location.reload();
					},
					error: function(xhr, textStatus, errorThrown) {
						if (textStatus === "timeout") {
							alert("请求超时，请稍后再试！");
						} else {
							alert("删除请求失败: " + errorThrown);
						}
					}
				});
			}
		}
		
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