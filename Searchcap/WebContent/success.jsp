<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="3">
	<tr>
		<th bgcolor="bisque">ProductId</th>
		<th bgcolor="bisque">ProductName</th>
		<th bgcolor="bisque">ProductDesc</th>
		<th bgcolor="bisque">categoryId</th>
		<th bgcolor="bisque">merchantUserId</th>
		<th bgcolor="bisque">productPrice</th>
		<th bgcolor="bisque">productQuantity</th>
		<th bgcolor="bisque">subcategoryId</th>
	
		
	</tr>
	<c:forEach var="list" items="${show}">
	<tr>		
	<td><c:out value="${list.ProductId}"></c:out></td>
	<td><c:out value="${list.ProductName}"></c:out></td>
	<td><c:out value="${list.ProductDesc}"></c:out></td>
	<td><c:out value="${list.categoryId}"></c:out></td>
	<td><c:out value="${list.merchantUserId}"></c:out></td>
	<td><c:out value="${list.productPrice}"></c:out></td>
	<td><c:out value="${list.productQuantity}"></c:out></td>
	<td><c:out value="${list.subcategoryId}"></c:out></td>
	
	</tr>
	</c:forEach>
	<tr>
	</table>
		<td colspan="5" align="center"><a href="index.jsp">Click Here To Go to Home</a></td>

	
</body>
</html>
