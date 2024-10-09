<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Список стран</title>
</head>
<body>
<h1>Список стран</h1>
<table border="1">
    <thead>
        <tr>
            <th>Название</th>
            <th>Столица</th>
            <th>Действия</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${countries}" var="country">
            <tr>
                <td>${country.name}</td>
                <td>${country.capital}</td>
                <td>
                    <g:link action="edit" id="${country.id}">Редактировать</g:link>
                    <g:link action="delete" id="${country.id}">Удалить</g:link>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>

<g:link action="create">Добавить страну</g:link>
</body>
</html>
