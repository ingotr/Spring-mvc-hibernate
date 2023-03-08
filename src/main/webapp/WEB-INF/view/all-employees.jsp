<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>All employees</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>

        <c:forEach var="employee" items="${allEmployees}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.surname}</td>
                <td>${employee.department}</td>
                <td>${employee.salary}</td>
            </tr>
        </c:forEach>
    </tr>
</table>
</body>
</html>
