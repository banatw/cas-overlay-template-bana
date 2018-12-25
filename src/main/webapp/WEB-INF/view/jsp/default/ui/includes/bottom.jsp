
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	</div><!-- /.container -->
</section>

<!-- </div> --> <!-- END #content -->

<!-- <footer>
  <div id="copyright" class="container">
    <p><spring:message code="copyright" /><span class="pull-right">Kementrian Pendidikan dan Kebudayaan</span></p>
  </div>
</footer> -->
 
<!-- </div> --> <!-- END #container -->



<script src="https://cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>

</body>
</html>

