<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Редактировать отель</title>
</head>
<body>
<h1>Редактировать отель</h1>

<g:form action="edit" method="post">
    <input type="hidden" name="id" value="${hotel.id}"/>

    <label for="name">Название отеля:</label>
    <g:textField name="name" value="${hotel.name}" required="required"/>

    <label for="country">Страна:</label>
    <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name"
              selected="${hotel.country?.id}" required="required"/>

    <label for="stars">Звездность:</label>
    <g:select name="stars" from="[1, 2, 3, 4, 5]" selected="${hotel.stars}" required="required"/>

    <label for="website">Сайт:</label>
    <g:textField name="website" value="${hotel.website}"/>

    <g:submitButton name="update" value="Обновить"/>
</g:form>

<!-- Ссылка для возвращения к списку отелей -->
<g:link action="index">Назад к списку отелей</g:link>
</body>
</html>
