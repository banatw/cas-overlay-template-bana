<jsp:directive.include file="includes/top.jsp" />


<div class="box" id="login">

	<div class="main">
		<div class="bg"></div>
		<div class="login-box">
			<form:form method="post" id="fm1" commandName="${commandName}"
				htmlEscape="true" cssClass="login">
				<div class="top">
					<div class="logo-tutwuri pull-left">
						<img src="dist/img/logo-tut-wuri.png" width="80px" />
					</div>
					<div class="head-title">
						<h1>SSO</h1>
						<div class="sub">Single Sign On - Biro Kepegawaian</div>
					</div>
				</div>
				<div class="middle">
					<p>
						Masukkan username dan password Anda/<br> <em>Enter your
							username and password</em>:
					</p>
					<form:errors path="*" id="msg" cssClass="alert alert-danger errors"
						element="div" htmlEscape="false" />

					<c:choose>
						<c:when test="${not empty sessionScope.openIdLocalId}">
							<strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
							<input type="hidden" id="username" name="username"
								value="<c:out value="${sessionScope.openIdLocalId}" />" />
						</c:when>
						<c:otherwise>
							<spring:message code="screen.welcome.label.netid.accesskey"
								var="userNameAccessKey" />
							<form:input cssClass="form-control required"
								cssErrorClass="error" id="username" size="25" tabindex="1"
								accesskey="${userNameAccessKey}" path="username"
								autocomplete="off" htmlEscape="true" placeholder="Username" />
						</c:otherwise>
					</c:choose><br>


					<spring:message code="screen.welcome.label.password.accesskey"
						var="passwordAccessKey" />
					<form:password cssClass="form-control required"
						cssErrorClass="error" id="password" size="25" tabindex="2"
						path="password" accesskey="${passwordAccessKey}" htmlEscape="true"
						autocomplete="off" placeholder="Password" />
					<span id="capslock-on" style="display: none;">
						<p>
							<img src="dist/img/warning.png" valign="top">
							<spring:message code="screen.capslock.on" />
						</p>
					</span>
				</div>
				<div class="bottom clearfix">
					<div class="pull-right" style="margin-top:-5px">
						<input type="hidden" name="lt" value="${loginTicket}" /> 
						<input
							type="hidden" name="execution" value="${flowExecutionKey}" /> 
						<input
							type="hidden" name="_eventId" value="submit" /> 
						<%-- <input
							class="btn btn-primary btn-lg btn-submit" name="submit"
							accesskey="l"
							value="<spring:message code="screen.welcome.button.login" />"
							tabindex="6" type="submit" /> --%><br>
						<button class="btn btn-primary btn-lg btn-submit" name="submit"
							accesskey="l" tabindex="6" type="submit">
							<spring:message code="screen.welcome.button.login" /></button>
					</div>
					<table>
						<tr>
							<td style="padding: 0px 10px 10px 10px;">
								<div class="help">
									<a href="http://118.98.234.108/sso-portal-admin/public/sso/migration">Lupa Password<br /> <em>Daftar Akun</em></a>
								</div>
							</td>
							<td style="border-left: solid #D5D5D5;"></td>
							<td style="padding: 0px 0px 10px 10px;">
								<div class="help">
									<a href="http://118.98.234.108/sso-portal-public/public">Kembali ke publik<br /> <em>Back to public</em>
									</a>
								</div>
							</td>
						</tr>
					</table><br><br>



					<c:if test="${not pageContext.request.secure}">
						<div id="msg" class="alert alert-danger error">
							<h2>
								<i class="glyphicon glyphicon-remove-sign"></i>
								<spring:message code="screen.nonsecure.title" />
							</h2>
							<p>
								<spring:message code="screen.nonsecure.message" />
							</p>
						</div>
					</c:if>

					<div id="cookiesDisabled" class="alert alert-warning errors"
						style="display: none;">
						<h2>
							<i class="glyphicon glyphicon-remove-sign"></i>
							<spring:message code="screen.cookies.disabled.title" />
						</h2>
						<p>
							<spring:message code="screen.cookies.disabled.message" />
						</p>
					</div>


					<c:if test="${not empty registeredService}">
						<c:set var="registeredServiceLogo" value="images/webapp.png" />
						<c:set var="registeredServiceName"
							value="${registeredService.name}" />
						<c:set var="registeredServiceDescription"
							value="${registeredService.description}" />

						<c:choose>
							<c:when test="${not empty mduiContext}">
								<c:if test="${not empty mduiContext.logoUrl}">
									<c:set var="registeredServiceLogo"
										value="${mduiContext.logoUrl}" />
								</c:if>
								<c:set var="registeredServiceName"
									value="${mduiContext.displayName}" />
								<c:set var="registeredServiceDescription"
									value="${mduiContext.description}" />
							</c:when>
							<c:when test="${not empty registeredService.logo}">
								<c:set var="registeredServiceLogo"
									value="${registeredService.logo}" />
							</c:when>
						</c:choose>

						<div id="serviceui" class="serviceinfo">
							<table class="table table-striped">
								<tr>
									<td><img src="${registeredServiceLogo}"></td>
									<td id="servicedesc">
										<h1>${fn:escapeXml(registeredServiceName)}</h1>
										<p>${fn:escapeXml(registeredServiceDescription)}</p>
									</td>
								</tr>
							</table>
						</div>
						<p />
					</c:if>
					
					<%-- <div class="alert alert-info alert-dismissible fade in"
						role="alert">
						<spring:message code="screen.welcome.security" />
					</div> --%>


				</div>
			</form:form>
		</div>
	</div>
</div>




<c:if test="${!empty pac4jUrls}">
	<div class="row" id="list-providers">
		<div class="col-sm-12">
			<h3>
				<spring:message code="screen.welcome.label.loginwith" />
			</h3>
			<form>
				<ul>
					<c:forEach var="entry" items="${pac4jUrls}">
						<li><a href="${entry.value}">${entry.key}</a></li>
					</c:forEach>
				</ul>
			</form>
		</div>
	</div>
</c:if>

<script>
$(document).ready(function(){	
});
</script>
<jsp:directive.include file="includes/bottom.jsp" />