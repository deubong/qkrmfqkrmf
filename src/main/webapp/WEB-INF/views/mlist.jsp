<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<h1>ȸ�����</h1>
	<hr />
	<table border="1">
		<tr>
			<th>���̵�</th>
			<th>��ȣ</th>
			<th>�̸�</th>
		</tr>

		<!-- for(Map<String, Object> map : list) { -->
		<c:forEach items="${list}" var="map">
			<tr>
				<td>${map.dong}</td>
				<td>${map.result1}</td>
			</tr>
		</c:forEach>
		<!-- } -->

	</table>

</body>
</html>