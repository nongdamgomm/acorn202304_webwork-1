<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test03.jsp</title>
</head>
<body>
	<button id="moreBtn">더보기</button>
	<ul id="msgList">
		<li>하나</li>
		<li>두울</li>
		<li>세엣</li>
	</ul>
	<script>
		document.querySelector("#moreBtn").addEventListener("click", ()=>{
			fetch("get_msg2.jsp")
			.then(res=>res.text())
			.then((data)=>{
				//data 는  [ "어쩌구" , "저쩌구" , "이렇쿵" ] 형식의 json 문자열이다.
				console.log(data);
				//실제 배열(object) 로 바꾸기(json 형식에 어긋나면 에러가 발생한다)
				const list=JSON.parse(data);
				console.log(list);
			});
			
		});
	</script>
</body>
</html>





