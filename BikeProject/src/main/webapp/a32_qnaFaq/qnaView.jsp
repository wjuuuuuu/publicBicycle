<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	img {
		max-width: 100%;
	}
	#title {
    	padding: 50px 0 40px 0;
	}
	#top {
		padding-bottom: 32px;
	    width: 1140px;
	    margin: 0 auto;
	    border-bottom: 1px solid rgb(234, 235, 238);
	}
	#qna_date {
		font-size: 15px;
	    margin-top: 10px;
	    margin-bottom: 0px;
	    color: rgb(134, 142, 150);
	}
	#content {
		padding: 32px 0;
	    width: 1140px;
	    margin: 0 auto;
	    border-bottom: 1px solid rgb(234, 235, 238);
	}
	#answer {
	    width: 1140px;
	    background-color: #efefef;
	    padding: 10px 15px;
	}
	#bottom {
		margin: 0 auto;
	    margin-top: 20px;
	    padding-bottom: 55px;
	    text-align: center;
	}
	#bottom button {
		width: 12%;
		height: 40px;
	}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	var msg = "${msg}"
	if(msg=="삭제되었습니다."){
		alert(msg);
		location.href = "${path}/qnaList.do";
	}
	$(document).ready(function(){
		$("#payManagerCommonTab td").eq(3).css({"background":"#001b31","color":"white"})
		
		var $qno = $('input[name=qno]').val();
		$("#listBtn").click(function(){
			location.href="${path}/qnaList.do"			
		});
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				location.href="${path}/delQna.do?qno="+$qno
			}
		});
		$("#uptBtn").click(function(){
			location.href="${path}/uptQnaFrm.do?qno="+$qno
		});
		$("#repBtn").click(function(){
			
		});
	});
</script>
</head>

<body>	

	<div class="container">
		<jsp:include page="/a00_main/a00_header.jsp"/>
		<jsp:include page="/a00_main/a10_myPageMemberSub.jsp"/>
		
		<section id="top">	
			<input type="hidden" name="qno" value="${qna.qno}"/>
			<h3 id="qna_title" style="margin:0px;">${qna.title}</h3>
			<p id="qna_date"><fmt:formatDate value="${qna.writedate}"/></p>
		</section> <!-- top -->
		
		<section id="content">
			<div>
				<p>
				${qna.content}
				<br>
				<img src="${path}/z01_upload/${qna.imgfile}" alt=""/> <!-- 첨부파일 경로 -->
				</p>
			</div>
			
		</section> <!-- content -->
		
		<div id="answer">
			<p>
			${qna.answer}
			</p>
		</div>
		
		<section id="bottom">
	    	<button id="delBtn" class="btn btn-outline-danger" type="button">삭제</button>
	    	<button id="uptBtn" class="btn btn-outline-success" type="button">수정</button>
	    	<!-- <button id="repBtn" class="btn btn-outline-success" type="button">답변</button> -->
	    	<button id="listBtn" class="btn btn-success" type="button">목록</button>
		</section> <!-- bottom -->
	</div>
	
	<jsp:include page="/a00_main/a08_footer.jsp"/>
</body>
</html>