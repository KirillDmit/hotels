<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Результаты поиска</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 text-gray-800">
<h1 class="text-3xl font-semi-bold text-left mb-8">Результаты поиска</h1>

<g:if test="${!hotels}">
    <p class="text-left text-red-500 text-xl">По Вашему запросу ничего не найдено</p>
</g:if>

<g:else>
    <p class="text-lg font-medium mb-4">Найдено отелей: ${total}</p>
    <table class="table-auto bg-white border-gray-300 rounded-lg shadow-md">
        <thead>
            <tr class="bg-gray-200">
                <th class="py-3 px-4 text-left text-gray-600 font-semi-bold">Звездность</th>
                <th class="py-3 px-4 text-left text-gray-600 font-semi-bold">Название</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${hotels}" var="hotel">
                <tr class="border-b border-gray-200 hover:bg-gray-100">
                    <td class="py-3 px-4">${hotel.stars}</td>
                    <td class="py-3 px-4">
                        ${hotel.name}
                        <g:if test="${hotel.website}">
                            <br/><a href="${hotel.website}" target="_blank" class="text-blue-500 hover:underline">Перейти на сайт</a>
                        </g:if>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</g:else>

<g:link action="index" class="bg-blue-500 text-white px-4 py-2 mt-4 inline-block rounded">Новый поиск</g:link>
<div class="pagination px-4 py-2 mt-4 inline-block rounded bg-white border border-gray-300">
    <g:paginate total="${total}" class="flex justify-center items-center space-x-2"/>
</div>
</body>
</html>
