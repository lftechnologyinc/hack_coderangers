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

   
		<table  cellspacing="0" border="0" cellpadding="10">
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
			<td><input type="text"  value="${drug.manufactureDate}"></td>
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
			<td><textarea rows="10" cols="200" >${drug.sideEffect}</textarea>  </td>
		</tr>
		<tr>
			<td>Cost</td>
			<td><input type="text"  value="${drug.cost}"></td>
		</tr>
		</table>

    
</div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
