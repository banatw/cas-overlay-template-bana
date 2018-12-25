<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>SSO Kemendikbud</title>

    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>


    <spring:theme code="standard.custom.css.file" var="customCssFile" />
    <%-- <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
    <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" /> --%>
    
    
    <!-- BOOTSTRAP -->
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/dist/css/styles.css">
	<script type="text/javascript" src="<%= request.getContextPath() %>/dist/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/dist/js/bootstrap.min.js"></script>
	

</head>
<body id="cas">

<div id="container">
  <%-- <header>
    <a id="logo" href="http://www.apereo.org" title="<spring:message code="logo.title" />">Apereo</a>
    <h1>Central Authentication Service (CAS)</h1>
  </header>
  <div id="content"> --%>
      <section id="illuminate-content">
	    <div class="container">

