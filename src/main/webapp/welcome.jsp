<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %> <!-- Ensure session is enabled -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to the Bank Web Client</h1>

    <!-- JSTL to check if the 'user' attribute exists in the session -->
    <c:choose>
        <c:when test="${not empty sessionScope.user}">
            <p>Hello, ${sessionScope.user}! You have successfully logged in.</p>
        </c:when>
        <c:otherwise>
            <p>No user is logged in. Please <a href="login.jsp">login</a>.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
