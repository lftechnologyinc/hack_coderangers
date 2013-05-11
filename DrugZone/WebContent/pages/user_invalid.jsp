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
      <script>

			$(document).ready(function(){
				
				$("form").submit(function(){
					
					var p_name = $("#p_name").val().trim();
					var p_address = $("#p_address").val().trim();
					var hospital_clinic = $("#hospital_clinic").val().trim();
					var u_phone_id = $("#u_phone_id").val().trim();
					var u_email_id = $("#u_email_id").val().trim();
					var code_id = $("#code_id").val().trim();
					var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;					
					var nameErrMsg =$("#nameErrMsg");
					var addressErrMsg= $("#addressErrMsg");
					var hospitalErrMsg =$("#hospitalErrMsg");
					var phoneErrMsg=$("#phoneErrMsg");
					var emailErrMsg=$("#emailErrMsg");
					var codeErrMsg=$("#codeErrMsg");
					
					var flag=true;
					
					if(p_name==""||p_name==null){
						nameErrMsg.html("Please Enter Pharmacy Name");
						flag=false;
					}
					else{
						nameErrMsg.html("");
					}
					
					if(p_address==""||p_address==null){
						addressErrMsg.html("Please Enter Pharmacy Address");
						flag=false;
					}
					else{
						addressErrMsg.html("");
					}
					if(hospital_clinic==""||hospital_clinic==null){
						hospitalErrMsg.html("Please Enter Nearest Hospital/Clinic Name");
						flag=false;
					}
					else{
						hospitalErrMsg.html("");
					}
					if(isNaN(isu_phone_id)){
						phoneErrMsg.html("Please Enter Your Phone Number");
						flag=false;
					}
					alert("hello");
					if(u_phone_id==""||u_phone_id==null){
						phoneErrMsg.html("Please Enter Your Phone Number");
						flag=false;
					}
					else if(u_phone_id.length!=10){
						phoneErrMsg.html("Please Enter Valid Phone Number");
						flag=false;
					}
					else{
						phoneErrMsg.html("");
					}
					if(u_email_id==""||u_email_id==null){
						emailErrMsg.html("Please Enter Your Email Address");
						flag=false;
					}else if(!emailPattern.test(u_email_id)){
						emailErrMsg.html("Please Enter Valid Email Address");
						flag=false;
					}
					else{
						emailErrMsg.html("");
					}
					
					if(code_id==""||code_id==null){
						codeErrMsg.html("Please Enter Drug Code");
						flag=false;
					}
					else if(isNaN(code_id)){
						codeErrMsg.html("Please Enter Valid Drug Code");
						flag=false;
					}else if(code_id.length!=7){
						codeErrMsg.html("Please Enter Valid Drug Code");
						flag=false;
					}
					else{
						codeErrMsg.html("");
					}
					
					return flag;
						
				});

				
			});
		
	
</script>



</header>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper clearfix">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content clearfix"><article class="art-post art-article">
                                
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout layout-item-0">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-1" style="width: 68%;" >
   
		<form action="ComplainDrug" method="post">
		<table cellspacing="0" cellpadding="10"  border="0">
			<tr>
				<td colspan="2">This is invalid drug.</td>
			</tr>
			<tr>
				<td colspan="2">Complain Against Illegal Drug.</td>
			</tr>
			<tr>
				<td>Pharmacy Name</td>
				<td><input type="text" name="p_name" id="p_name"></td>
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
				<td><input type="text" name="u_email" id="u_email_id" ></td>
				<td class="ErrMsg" id="emailErrMsg"></td>
			</tr>
			<tr>
				<td>Code</td>
				<td><input type="text" name="code" id="code_id"></td>
				<td class="ErrMsg" id="codeErrMsg"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Complain"></td>
			</tr>
		</table>
	
	</form>
	

    
</div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
            

