<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Удаление отеля</title>
</head>
<body>
<h1>Вы уверены, что хотите удалить этот отель?</h1>

<p>Название отеля: ${hotel.name}</p>
<p>Страна: ${hotel.country.name}</p>
<p>Звездность: ${hotel.stars}</p>

<g:form action="delete" method="post">
    <input type="hidden" name="id" value="${hotel.id}"/>
    <g:submitButton name="delete" value="Удалить"/>
</g:form>

<g:link action="index">Отмена</g:link>
</body>
</html>
