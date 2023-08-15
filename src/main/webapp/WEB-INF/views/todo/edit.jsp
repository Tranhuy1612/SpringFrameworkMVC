<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/14/2023
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/TodoController/edit"  method="post">
    <input type="text" name="id" readonly value="${todo.id}">
    <br>
    <textarea name="content" cols="30" rows="5">${todo.content}</textarea>
    <br>
    <select name="status">
        <option value="true"  ${todo.status?'selected':''}>Đã hoàn thành</option>
        <option value="false" ${todo.status?'':'selected'}>Chưa hoàn thành</option>
    </select>
    <button type="submit">Update</button>
</form>
</body>
</html>
