<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.sdww8591.entity.Photo" %>
<html>
<head>
    <title>test</title>
</head>
<body>
  the var is:
  <c:forEach items="${photos}" var="photo">
    <h4><c:out value="${photo.title}"/></h4>
  </c:forEach>
</body>
</html>
