<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:forEach var="drug" items="${drugs}"></c:forEach>
	<table>
		<tr>
			<td colspan="2">This is Valid Drug.</td>
		</tr>
		<tr>
			<td colspan="2">Drug Information</td>
		</tr>
		<tr>
			<td>Drug Name</td>
			<td><input type="text"  value="${drug.name}"></td>
		</tr>
		<tr>
			<td>Manufacturer Date</td>
			<td><input type="text"  value="${drug.manufacturerDate}"></td>
		</tr>
		<tr>
			<td>Expire Date</td>
			<td><input type="text"  value="${drug.expireDate}"></td>
		</tr>
		<tr>
			<td>Drug Code</td>
			<td><input type="text"  value="${drug.code}"></td>
		</tr>
		<tr>
			<td>Side Effect</td>
			<td><textarea rows="100" cols="200"></textarea></td>
		</tr>
		<tr>
			<td>Cost</td>
			<td><input type="text"  value="${drug.cost}"></td>
		</tr>
	</table>
</body>
</html>