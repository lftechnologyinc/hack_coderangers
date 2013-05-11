<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<script type="text/javascript"	src="${pageContext.request.contextPath}/resources/jsp/jquery-1.8.2.js"></script>
<script type="text/javascript" 	src="${pageContext.request.contextPath}/resources/jsp/jquery-ui.js"></script>
<script>

	$(document).ready(function(){
		
		var p_id = $("$p_id");
		var p_address = $("$p_address");
		var hospital_clinic = $("#hospital_clinic");
		var u_phone_id = $("#u_phone_id");
	});

</script>

</head>
<body>
		<table>
			<tr>
				<td colspan="2">This is invalid drug.</td>
			</tr>
			<tr>
				<td colspan="2">Complain Against Illegal Drug.</td>
			</tr>
			<tr>
				<td>Pharmacy Name</td>
				<td><input type="text" name="p_name" id="p_id"></td>
				<td class="ErrMsg" id="nameErrMsg"></td>
			</tr>
			<tr>
				<td>Pharmacy Address</td>
				<td><input type="text" name="p_address" id="p_address"></td>
				<td class="ErrMsg" id="addressErrMsg"></td>
			</tr>
			<tr>
				<td>Hospital/Clinic</td>
				<td><input type="text" name="hospital_clinic" id="hospital_clinic"></td>
				<td class="ErrMsg" id="hospitalErrMsg"></td>
			</tr>
			<tr>
				<td>User Phone</td>
				<td><input type="text" name="u_phone" id="u_phone_id"></td>
				<td class="ErrMsg" id="phoneErrMsg"></td>
				
			</tr>
			<tr>
				<td>User Email</td>
				<td><input type="text" name="u_email" id="u_email_id"></td>
				<td class="ErrMsg" id="emailErrMsg"></td>
			</tr>
			<tr>
				<td>Code</td>
				<td><input type="text" name="code" id="code_id"></td>
				<td class="ErrMsg" id="codeErrMsg"></td>
			</tr>
		
		</table>
</body>
</html>