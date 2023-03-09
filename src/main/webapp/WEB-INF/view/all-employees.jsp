<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="<c:url value="/resources/theme1/css/main.css" />" rel="stylesheet">
    <title>Title</title>
</head>
<body>
    <div>
        <h2>All employees</h2>
        <br>
        <table id="employeeTable">
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Operations</th>
            </tr>

            <c:forEach var="employee" items="${allEmployees}">
                <c:url var="updateButton" value="/updateEmployee">
                    <c:param name="empId" value="${employee.id}"/>
                </c:url>
                <tr>
                    <td>${employee.name}</td>
                    <td>${employee.surname}</td>
                    <td>${employee.department}</td>
                    <td>${employee.salary}</td>
                    <td><input type="button" value="Update" onclick="window.location.href='${updateButton}'"></td>
                </tr>
            </c:forEach>

        </table>
        <br>
        <input type="button" value="Add" onclick="window.location.href='addNewEmployee'"/>
    </div>
</body>
</html>
