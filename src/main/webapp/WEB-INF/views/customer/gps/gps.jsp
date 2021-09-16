<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../main/header.jsp"%>

<!-- 구글 지도 api 라이브러리 -->
<script src="http://maps.googleapis.com/maps/api/js"></script>

<script src="/tpj/resources/js/gps.js"></script>


<link rel="stylesheet" href="/tpj/resources/gps.css">

</head>
<body>
	
	
	<div style="text-align:center; width:600px; margin-left: auto; margin-right: auto; margin-top: 80px; margin-bottom:30px; font-size: 20px; font-weighg:bold;">
		<b> 현재 반려견 위치 </b>
	</div>
	
	<div id="googleMap" style="width: 500px;height: 580px; margin-left: auto; margin-right:auto; margin-bottom:80px;"> </div>


<%@ include file="../../main/footer.jsp"%>	
	
</body>
</html>

<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
<script>
    $(function() {        
        // Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 정기적으로 얻기
            var id = navigator.geolocation.watchPosition(
                    function(pos) {
                        $('#latitude').html(pos.coords.latitude);     // 위도 
                        $('#longitude').html(pos.coords.longitude); // 경도 
                    });
            
            // 버튼 클릭으로 감시를 중지
            $('#btnStop').click(function() {
                navigator.geolocation.clearWatch(id);
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
        
    });
</script>
</head>
<body>
    <ul>
        <li>위도:<span id="latitude"></span></li>
        <li>경도:<span id="longitude"></span></li>
    </ul>
    <input id="btnStop" type="button" value="감시를 끝낸다" />
</body>
</html>
--%>
