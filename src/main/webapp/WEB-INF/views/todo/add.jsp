<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Add Todo</title>
</head>
<body>
<h2>Add Todo</h2>
<form th:action="/TodoController/add" method="post">
    <label for="content">Content:</label>
    <textarea id="content" name="content" cols="30" rows="5" value="${todo.content}" required></textarea>
    <br>
    <select name="status">
        <option value="true"  ${todo.status?'selected':''}>Đã hoàn thành</option>
        <option value="false" ${todo.status?'':'selected'}>Chưa hoàn thành</option>
    </select>
    <button type="submit">Add</button>
</form>
</body>
</html>
