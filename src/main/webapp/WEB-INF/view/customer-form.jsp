<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: xjlu6
  Date: 26/3/20
  Time: 3:48 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customer Form</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <div id="container">
        <div id="content">
            <form:form action="saveCustomer" modelAttribute="customer" method="POST">
                <form:hidden path="id" />
                <label>First Name</label> <form:input path="firstName" />
                <br> <br>
                <label>Last Name</label> <form:input path="lastName" />
                <br> <br>
                <label>Email Name</label> <form:input path="email" />
                <br> <br>
            <input type="submit" value="Save" class="save" />
        </form:form>
        </div>
    </div>
    <div>
        <p><a href="${pageContext.request.contextPath}/customer/list">Go Back</a></p>
    </div>
</body>
</html>
