<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Результаты поиска</title>
</head>
<body>
<h1>Результаты поиска</h1>

<g:if test="${!hotels}">
    <p>По Вашему запросу ничего не найдено</p>
</g:if>

<g:else>
    <p>Найдено отелей: ${hotels.size()}</p>
    <table border="1">
        <thead>
            <tr>
                <th>Звездность</th>
                <th>Название</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${hotels}" var="hotel">
                <tr>
                    <td>${hotel.stars}</td>
                    <td>
                        ${hotel.name}
                        <g:if test="${hotel.website}">
                            <br/><a href="${hotel.website}" target="_blank">Перейти на сайт</a>
                        </g:if>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</g:else>
<g:link action="index">Новый поиск</g:link>
</body>
</html>
