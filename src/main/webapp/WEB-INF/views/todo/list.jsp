<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/14/2023
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<h1>Danh sách công việc</h1>
<td><a href="/TodoController/add/${t.id}">Add</a></td>
<table border="10" cellpadding="10" cellspacing="10">
  <thead>
  <tr>
    <th>STT</th>
    <th>Content</th>
    <th>Status</th>
    <th colspan="2">Action</th>
  </tr>
  </thead>
  <tbody>
<c:forEach items="${todo}" var="t" varStatus="loop">
  <tr>
    <td>${loop.count}</td>
    <td>${t.content}</td>
    <td>${t.status}</td>
    <td><a href="/TodoController/edit/${t.id}">Edit</a></td>
    <td><a onclick="return confirm('Are u sure to delete this item?')" href="/TodoController/delete/${t.id}">Delete</a></td>
  </tr>
</c:forEach>



  </tbody>
</table>
</body>
</html>
