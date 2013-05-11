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
    <form action="LegalBody" method = "post">
    
		<table  cellspacing="0" border="0" cellpadding="10">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="l_name" id="l_id" required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="l_password" id="l_password" required></td>
			</tr>
			<tr>
				<td><input type="submit" value="login"></td>			
			</tr>
		</table>

	</form>
    
</div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
