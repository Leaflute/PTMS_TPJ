<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객-로그인</title>
</head>
<body>

	<%@ include file="../header.jsp"%>

	<section style = "width:700px; margin-left:auto; margin-right:auto; margin-top:30px;">
	<form name="joinInform" action="${ad}adminloginaction" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="row no-gutters" >
				<div class="col-md-7" style ="max-width: 100% !important; flex:0 0 100% !important">
					<div class="contact-wrap w-100 p-md-5 p-4">
						<h3 class="mb-4">로그인</h3>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="label" for="mg_id">관리자 아이디</label>
										<input type="text" class="form-control" name="mg_id" id="mg_id" placeholder="아이디">
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<label class="label" for="mg_pwd">관리자 비밀번호</label>
										<input type="text" class="form-control" name="mg_pwd" id="mg_pwd" placeholder="비밀번호" >
									</div>
								</div>
								
								
								<div class="col-md-12">
									<div class="form-group" align = "center">
										<input type="submit" value="로그인" class="btn btn-primary" id = "join_sub">
										<div class="submitting"></div>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
	</form>
</section>

	<%@ include file="../footer.jsp"%>

</body>
</html>