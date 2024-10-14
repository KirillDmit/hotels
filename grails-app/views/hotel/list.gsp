<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Список отелей</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="container mx-auto px-4 py-6">
<h1 class="text-3xl font-semi-bold mb-6">Список отелей</h1>

<table class="table-auto w-full text-left">
    <thead>
        <tr class="bg-gray-200 text-gray-600">
            <th class="px-4 py-2">Название</th>
            <th class="px-4 py-2">Страна</th>
            <th class="px-4 py-2">Звездность</th>
            <th class="px-4 py-2">Действия</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${hotels}" var="hotel">
            <tr class="border-b">
                <td class="px-4 py-2">${hotel.name}</td>
                <td class="px-4 py-2">${hotel.country?.name}</td>
                <td class="px-4 py-2">${hotel.stars}</td>
                <td class="px-4 py-2">
                    <g:link action="edit" id="${hotel.id}" class="text-blue-500 hover:underline">Редактировать</g:link>
                    <g:link action="delete" id="${hotel.id}" class="text-red-500 hover:underline">Удалить</g:link>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>

<g:link controller="hotel" action="create" class="bg-blue-500 text-white px-4 py-2 mt-4 inline-block rounded">Добавить отель</g:link>
<div class="pagination px-4 py-2 mt-4 inline-block rounded bg-white border border-gray-300">
    <g:paginate total="${total}" class="flex justify-center items-center space-x-2" />
</div>
</body>
</html>
