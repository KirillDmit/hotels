<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Редактировать страну</title>
</head>
<body>
<h1>Редактировать страну</h1>
<g:form action="edit" method="post">
    <input type="hidden" name="id" value="${country.id}"/>

    <label for="name">Название страны:</label>
    <g:textField name="name" value="${country.name}" required="required"/>

    <label for="capital">Столица:</label>
    <g:textField name="capital" value="${country.capital}" required="required"/>

    <g:submitButton name="update" value="Обновить"/>
</g:form>

<g:link action="index">Назад к списку стран</g:link>
</body>
</html>
