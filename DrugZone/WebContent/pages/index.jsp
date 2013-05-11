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
    <div class="art-layout-cell layout-item-1" style="width: 68% ;background-image:url('resources/images/medicine.jpg');" >
<!--         <p><br style="line-height: 40px;"></p> -->
<!--         <h5><span style="color: #262626;">Type <br> -->
<!--         in</span><br> -->
<!--         &nbsp;&nbsp; &nbsp;Drug<br> -->
<!--         &nbsp;&nbsp; &nbsp;Code</h5> -->
  <div id="search-area" style="margin-top:90px; background:rgba(#333 #333 #333 0.5);">
  
   Type in drug code below:
     <form action="Search" method="post">
      <input type="text" name="code"/>
        <p style="text-align: right; margin: 30px"><input type="submit" value="Search" class="art-button"></a>&nbsp;</p>
     
     </form>
     
   </div>
    </div><jsp:include page="includes/sidebar.jsp"/>    </div>
</div>


            
            <jsp:include page="includes/bottombanner.jsp"/>
