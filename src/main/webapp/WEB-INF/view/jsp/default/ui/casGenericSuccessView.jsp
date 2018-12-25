<jsp:directive.include file="includes/top.jsp" />

<div class="box" id="login">

	<div class="main">
		<div class="bg"></div>
		<div id="msg" class="login">
		  <div class="top">
		  	<div class="logo-tutwuri pull-left">
				<img src="dist/img/logo-tut-wuri.png" width="80px" />
			</div>
			<div class="head-title">
				<h1>SSO</h1>
				<div class="sub">Single Sign On - Biro Kepegawaian</div>
			</div>		  	
		  </div>
		  <div class="bottom clearfix">
		  	<h2><spring:message code="screen.success.header" /></h2>
		  	<p><spring:message code="screen.success.success" arguments="${principal.id}"/></p>
		    <p><spring:message code="screen.success.security" /></p>
		  </div>
		</div>
	</div>
</div>
   
<jsp:directive.include file="includes/bottom.jsp" />

