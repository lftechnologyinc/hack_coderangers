<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<td>Pharmacy Name</td>
				<td>${complain.pharmacyName}</td>
			</tr>
			<tr>
				<td>Pharmacy Address</td>
				<td>${complain.address}</td>
			</tr>
			<tr>
				<td>Drug Code</td>
				<td>${complain.drugCode}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${complain.email}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${complain.phoneNumber}</td>
			</tr>
			<tr>
				<td>Hospital Name</td>
				<td>${complain.hospitalName}</td>
			</tr>
	</table>	
	</c:forEach>
	
    
</div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
