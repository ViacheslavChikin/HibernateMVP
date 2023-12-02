<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: slv32
  Date: 30.11.2023
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>

    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Departmebt</th>
        <th>Salary</th>
        <th>Operation</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>

                <input type="button" value="Update"
                       onClick="window.location.href ='${updateButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table>

<br>
<input type="button" value="Add"
       onclick="window.location.href = 'addNewEmployee'"/>
</body>
</html>
