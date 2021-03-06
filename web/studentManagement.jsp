<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linuxmachine
  Date: 2020-03-09
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp"/>
<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }

    .button {
        background-color: #008CBA; /* Blue */
        border: none;
        color: white;
        padding: 12px 18px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
    }
</style>
<body>

<h2> Student management </h2>

<a href="ControllerServlet?action=addNewStudent" class="button">Add student</a>

<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>University Group</th>
        <th>Email</th>
        <th>Action</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.universityGroup}</td>
            <td>${student.email}</td>
            <td>
                <a href="ControllerServlet?action=updateStudent&id=${student.id}">Update</a> |
                <a onclick="return confirm('Are you sure, you want to delete it?')" href="ControllerServlet?action=deleteStudent&id=${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>