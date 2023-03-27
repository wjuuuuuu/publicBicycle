<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.fs-1{
	font-size: 2.3rem;
	font-weight: bolder;
	padding: 0 0 0 2.5%;
}
.nextbutton{
	width:28%;
	padding: 10px 20px 10px 20px;
	background: #24384a;
	color: white;
	font-size: 0.9rem;
	border: #24384a solid 1px;
	text-align: center;
	margin-left: 0; margin-right: 0;
	font-weight: bold;
}
input[type="radio"]{display: none;}
input[type="radio"] + label{
	display: inline-block;
	width:35%;
	padding: 10px 20px 10px 20px;
	background: white;
	color:black;
	font-size: 0.9rem;
	border: #24384a solid 1px;
	text-align: center;
	margin-left: 0; margin-right: 0;
	font-weight: bold;
}
input[type="radio"]:checked + label {
	background: #24384a;
	color: white;
	font-weight: bold;
}
.conbox{
	width: 100%;
	margin: 0 auto;
	display: none;
}
input[id="tab01"]:checked ~ .con1{
	display:block;
}
input[id="tab02"]:checked ~ .con2{
	display:block;
}
.alink, .alink:hover{
	color: black;
	font-weight: bold;
	text-decoration: none;
}
.adiv{
	padding-bottom: 8px;
}
.anexttext{
	font-size: 0.8rem;
}
.form-control{
	width: 89% !important;
	display: inline-block !important;
	height: 30.4px !important;
}
.form-control.email{
	width: 40% !important;
}
.btn-primary{
	font-size: 0.7rem !important;
	padding: 0.32rem 0.6rem !important;
}
.form-control::placeholder {
	font-size: 0.7rem !important;
}
.form-select{
	display: inline-block !important;
	width: 40% !important;
	font-size: 0.7rem;
	color: gray;
}
.col.left{
	width: 3% !important;
	text-align:right;
	font-size:0.7rem;
	font-weight:bold;
	padding: 0;
	justify-content: center;
	align-content: center;
}
.col.right{
	width: 3% !important;
	padding: 0;
	justify-content: flex-start;
	align-content: flex-start;
	text-align: left;
}
.formLabel{
	padding-top: 3%;
}
.row{
	margin-top: 1%;
}
.cerficationMsg{
	font-size: 0.6rem;
	color:red;
	font-weight: bold;
	padding-left: 5px;
}
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript">
	$(document).ready(function(){
		console.log("@2")
		
	});
	console.log('##')
</script>

</head>

<body>
<div class="container">
	<jsp:include page="${path }/a00_main/a00_header.jsp"></jsp:include>
	<br><br>
	<p class="fs-1 text-lg-start">회원가입</p>
	<br><br>
	<div class="justify-content-center text-center">
		<input type="radio" id="tab01" name="tabmenu" checked>
		<label for="tab01">약관동의</label>
		<input type="radio" id="tab02" name="tabmenu">
		<label for="tab02">정보입력</label>
		
		<div class="conbox con1">
		<br><br><br>
		<div class="adiv"><a class="alink" href="*">(필수) 서비스 이용약관 동의 (상세내용 보기)</a>&nbsp; <input type="checkbox" class="check"><br></div>
		<div class="adiv"><a class="alink" href="*">(필수) 개인정보 수집ㆍ이용 동의 (상세내용 보기)</a>&nbsp; <input type="checkbox" class="check"><br></div>
		<div class="adiv"><a class="alink" href="*">(필수) 위치기반 서비스 이용약관에 동의 (상세내용 보기)</a>&nbsp; <input type="checkbox" class="check"><br></div>
		<div class="adiv"><a class="alink" href="*">(선택) 수집한 개인정보의 제 3자 정보제공 동의 (상세내용 보기)</a>&nbsp; <input type="checkbox" class="check"><br></div>
		<div class="adiv"><a class="alink" href="*">(선택) 마켓팅 및 이벤트 정보 수신 동의</a>&nbsp; <input type="checkbox" class="check"><br></div>
		<p class="anexttext">에 동의하여 가입합니다.</p><br><br>
		
		<input type="checkbox" id="allcheck">&nbsp;위 약관을 모두 읽었으며 이에 동의합니다.<br><br><br>
		<button class="nextbutton" id="nextbutton" type="button">다음</button>
		</div>
		
		<div class="conbox con2">
		<form id="frm01" method="post" action="${path }/signup.do">
		<div class="row">
		<div class="col left"><label class="formLabel" for="idInput">아이디</label></div>
		<div class="col center"><input type="text" id="idInput" class="form-control" name="id" placeholder="영문, 숫자 포함 6~12자리"></div>
		<div class="col right"><button id ="idCkBtn" class="btn btn-primary" type="button">중복확인</button><span id="cerId" class="cerficationMsg"></span></div>
		<input type="hidden" id="idck">

		</div>
		<div class="row">
		<div class="col left"><label class="formLabel" for="passInput">비밀번호</label></div>
		<div class="col center"><input type="password" id="passInput" class="form-control" name="pass" placeholder="영문, 숫자, 특수문자 포함 8~12자리"></div>
		<div class="col right"><span id="cerPass" class="cerficationMsg"></span></div>
		</div>
		<div class="row">
		<div class="col left"></div>
		<div class="col center"><input type="password" class="form-control" id="passInput2" placeholder="비밀번호 확인"></div>
		<div class="col right"><span id="cerPass2" class="cerficationMsg"></span></div>
		<input type="hidden" id="passck">
		</div>
		<div class="row">
		<div class="col left"><label class="formLabel" for="nameInput">이름</label></div>
		<div class="col center"><input type="text" id="nameInput" class="form-control" name="name" placeholder="이름 입력"></div>
		<div class="col right"><span id="cerName" class="cerficationMsg"></span></div>
		<input type="hidden" id="nameck">
		</div>
		<div class="row">
		<div class="col left"><label class="formLabel" for="phoneInput">휴대전화</label></div>
		<div class="col center"><input type="text" id="phoneInput" class="form-control" name="phoneNumber" placeholder="휴대전화번호 입력"></div>
		<div class="col right"><button class="btn btn-primary" id="callCertification" data-bs-toggle="modal" data-bs-target="#exampleModal" type="button">인증요청</button></div>
		<input type="hidden" id="phoneck">
		</div>
		<div class="row">
		<div class="col left"></div>
		<div class="col center"><input type="text" id="certificationInput" class="form-control" placeholder="인증번호 입력"></div>
		<div class="col right"><button class="btn btn-primary" id="checkCertification" type="button">확인</button> <span id="cerPhone" class="cerficationMsg"></span></div>
		</div>
		<div class="row">
		<div class="col left"><label class="formLabel" for="emailInput">이메일</label></div>
		<div class="col center" style="justify-content: center;"><input type="text" id="emailInput" class="form-control email" name="email1" placeholder="이메일 아이디">
				<span>@</span> <select class="form-select" aria-label="Default select example" name="email2">
				  <option value="0" selected>선택</option>
				  <option>naver.com</option>
				  <option>gmail.com</option>
				  <option>hanmail.net</option>
				  <option>yahoo.co.kr</option>
				</select>
		</div>
		<input type="hidden" name="email">
		<input type="hidden" name="auth">
		<div class="col right"></div>
		</div>
		<div class="row">
		<div class="col left"><label class="formLabel" for="weightInput">몸무게</label></div>
		<div class="col center"><input type="text" id="weightInput" class="form-control" value="0" name="weight" placeholder="입력하지 않으면 자동으로 65kg으로 설정됩니다"></div>
		<div class="col right"><span id="cerWeight" class="cerficationMsg"></span></div>
		</div>
		<button class="nextbutton" id="regBtn" type="button" style="margin-top: 2%;">완료</button>
		</form>
		</div>
		
		</div>
		
		
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">인증번호</h5>
		        <button type="button" class="btn-close" id="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		    </div>
		  </div>
		</div>
		
</div>
<br><br><br><br>
<jsp:include page="${path }/a00_main/a08_footer.jsp"></jsp:include>	
</body>
<script>
	$("[name=tabmenu]").attr('disabled',true); // 초기에 라디오 버튼 비활성화처리
	$("#allcheck").click(function(){
		if($("#allcheck").prop("checked")){
			$(".check").prop("checked",true);
		}else{
			$(".check").prop("checked",false);
		}
	})
	$("#nextbutton").click(function(){
		if($(".check").eq(0).prop("checked")&&$(".check").eq(1).prop("checked")&&$(".check").eq(2).prop("checked")){
			$("#tab02").attr("checked",true);	
			$("[name=tabmenu]").attr('disabled',false);
		}else{
			swal("필수 항목을 체크해주세요");
		}
	})
	let ranNum = 0;
	$("#callCertification").click(function(e){
		let phoneVal = $("#phoneInput").val()
		let invalidPhone = /^010?([0-9]{8})$/
		if( !invalidPhone.test(phoneVal)){
			$("#cerPhone").text("유효하지 않는 전화번호입니다.")
		}else{
			e.preventDefault();
			$("#cerPhone").text("")
			$('#exampleModal').modal("show");
			ranNum = parseInt(Math.random()*8999+1000)
			$('.modal-body').text(ranNum)
		}		
	})

	$("#btn-close").click(function(){
		$('#exampleModal').modal("hide");
		
		$("#checkCertification").click(function(){
			if($("#certificationInput").val()==ranNum){
				swal("확인되었습니다.")
				$("#phoneck").val("check")
			}else{
				console.log("불일치")
				$("#cerPhone").text("인증번호가 일치하지 않습니다.")
			}
			
		})
	})
	

	
	// 아이디 유효성 체크
	$("#idCkBtn").click(function(){
		let idVal = $("#idInput").val()
		let invalidId = /(?=.*\d)(?=.*[a-zA-Z]).{6,12}/
		if( !invalidId.test(idVal) ){ 
			$("#cerId").text("유효하지 않는 아이디입니다.")	
			$("#idInput").focus()
		}else{
			$.ajax({
				url:"${path}/invalidId.do",
				type:"post",
				data:"id="+idVal,
				dataType:"json",
				success:function(data){
					var idCk = data.idCk
					if(idCk==1){
						$("#cerId").text("이미 등록된 아이디입니다.")
						$("#idInput").focus()
					}else{	
						$("#cerId").text("사용가능한 아이디입니다.")	
						$("#idck").val("check")					
					}
				},
				error:function(err){
					console.log(err)
				}
			})
			
		}
	})
	
	// 비밀번호 유효성 체크
	$("#passInput").keyup(function(){
		let passVal = $("#passInput").val()
		let invalidPass = /(?=.*\d)(?=.*[a-zA-Z])(?=.*?[#?!@$%^&*-]).{8,12}/; 	
		if(!invalidPass.test(passVal)){
			$("#cerPass").text("유효하지 않는 비밀번호입니다.")
		}else{
			$("#cerPass").text("사용가능한 비밀번호입니다.")
		}
	})
	
	$("#passInput2").keyup(function(){
		let passVal = $("#passInput").val()
		let passVal2 = $("#passInput2").val()
		if(passVal==passVal2){
			$("#cerPass2").text("비밀번호가 일치합니다.")
			$("#passck").val("check")
		}else{
			$("#cerPass2").text("비밀번호가 일치하지 않습니다.")
		}
	})
	// 이름 유효성 체크
	$("#nameInput").keyup(function(){
		let nameVal = $("#nameInput").val()
		let invalidName = /^[가-힣a-zA-Z]+$/
		if(nameVal==""){
			$("#cerName").text("")
		}else{
			if(!invalidName.test(nameVal)){
				$("#cerName").text("이름은 영문 혹은 한글로 입력하세요.")
			}else{
				$("#cerName").text("")
				$("#nameck").val("check")
			}
		}
	})
	
	$("#weightInput").keyup(function(){
		let weightVal = $("#weightInput").val()
		let invalidWeight = /^[0-9]+$/
		if(weightVal==""){
			$("#cerWeight").text("")
		}else{
			if(!invalidWeight.test(weightVal)){
				$("#cerWeight").text("숫자만 입력하세요.")
			}else{
				$("#cerWeight").text("")
			}
		}
	})
	

	$("#regBtn").click(function(){
		let idckVal = $("#idck").val()
		let passckVal = $("#passck").val()
		let phoneckVal = $("#phoneck").val()
		let nameckVal = $("#nameck").val()
		let weightVal = $("#weightInput").val()
		let email1 = $("[name=email1]").val()
		let email2 = $("[name=email2]").val()
		let weightck = $("#cerWeight").text()
		
		
		if(idckVal=="check" && passckVal=="check" && phoneckVal=="check" && nameckVal=="check" && email1!="" && email2!="" && weightck==""){
			$("[name=email]").val(email1+"@"+email2)
			$("[name=auth]").val("일반회원")
			$("#frm01").submit()
			swal("환영합니다","회원가입이 완료되었습니다","succeess");
			
			// ajax로 db에 넣기
			
		}else{
			console.log(idckVal)
			console.log(passckVal)
			console.log(phoneckVal)
			console.log(nameckVal)
			console.log(weightVal)
			console.log(email1)
			console.log(email2)
			swal("빠트린 항목이 있는지 확인해주세요")
		}
	})
	

</script>
</html>