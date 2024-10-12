<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Список отелей</title>
</head>
<body>
<h1>Список отелей</h1>

<table border="1">
    <thead>
        <tr>
            <th>Название</th>
            <th>Страна</th>
            <th>Звездность</th>
            <th>Действия</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${hotels}" var="hotel">
            <tr>
                <td>${hotel.name}</td>
                <td>${hotel.country?.name}</td>
                <td>${hotel.stars}</td>
                <td>
                    <g:link action="edit" id="${hotel.id}">Редактировать</g:link>
                    <g:link action="delete" id="${hotel.id}">Удалить</g:link>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>

<g:link action="create">Добавить отель</g:link>
<div class="pagination">
    <g:paginate total="${total}" />
</div>
</body>
</html>
