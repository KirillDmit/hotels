<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Добавить отель</title>
</head>
<body>
<h1>Добавить отель</h1>
<g:form action="create" method="post">
    <label for="name">Название отеля:</label>
    <g:textField name="name" required="required"/>

    <label for="country">Страна:</label>
    <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name" required="required"/>

    <label for="stars">Звездность:</label>
    <g:select name="stars" from="[1, 2, 3, 4, 5]" required="required"/>

    <label for="website">Сайт:</label>
    <g:textField name="website"/>

    <g:submitButton name="save" value="Сохранить"/>
</g:form>

<g:link action="index">Назад к списку отелей</g:link>
</body>
</html>
