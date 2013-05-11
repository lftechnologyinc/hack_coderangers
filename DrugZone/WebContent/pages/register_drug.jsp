<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"/>

<body >
<div id="art-main">
<header class="art-header clearfix">


    <div class="art-shapes">
     DRUG ZONE
<h1 class="art-headline" data-left="31.61%">
   

   
</h1>
<jsp:include page="includes/navbar.jsp"/>
</div>


</header>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper clearfix">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content clearfix"><article class="art-post art-article">
                                
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout layout-item-0">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-1" style="width: 68%;" >
    <c:forEach var="complain" items="${complains}">
		<table  cellspacing="0" border="0" cellpadding="10">
			<tr>
					<td>Name</td>
					<td><input type="text" name="d_name" id="d_id"></td>
				</tr>
				<tr>
					<td>Code</td>
					<td><input type="text" name="d_code" id="d_code"></td>
				</tr>
				<tr>
					<td>Manufacture Date</td>
					<td><input type="text" name="d_manufacture" id="d_manufacture"></td>
				</tr>
				<tr>
					<td>Expire Date</td>
					<td><input type="text" name="d_expire" id="d_expire"></td>
				</tr>
				<tr>
					<td>Side Effect</td>
					<td><textarea rows="20" cols="200" name="d_sideEffect" id="d_sideEffect"></textarea></td>
				</tr>
				<tr>
					<td>Manufacturer Name</td>
					<td><input type="text" name="d_manufacturer" id="d_manufacturer"></td>
				</tr>
				<tr>
					<td>Cost</td>
					<td><input type="text" name="d_cost" id="d_manufacturer"></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit"></td>
				</tr>		</table>
	</c:forEach>
    
</div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
