<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Добавить страну</title>
</head>
<body>
<h1>Добавить страну</h1>

<g:form action="create" method="post">
    <label for="name">Название страны:</label>
    <g:textField name="name" required="required"/>

    <label for="capital">Столица:</label>
    <g:textField name="capital" required="required"/>

    <g:submitButton name="save" value="Сохранить"/>
</g:form>

<g:link action="index">Назад к списку стран</g:link>
</body>
</html>
