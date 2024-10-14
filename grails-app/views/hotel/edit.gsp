<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Редактировать отель</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

<div class="container mx-auto px-4 py-6">
    <h1 class="text-3xl font-bold mb-6 text-gray-800">Редактировать отель</h1>

    <div class="bg-white shadow-md rounded-lg p-6">
        <g:form action="edit" method="post" class="space-y-4">
            <input type="hidden" name="id" value="${hotel.id}"/>

            <div>
                <label for="name" class="block text-lg font-semi-bold text-gray-700">Название отеля:</label>
                <g:textField name="name" value="${hotel.name}" required="required"
                             class="mt-1 block w-full border border-gray-300 rounded-lg px-3 py-2 shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <label for="country" class="block text-lg font-semi-bold text-gray-700">Страна:</label>
                <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name"
                          selected="${hotel.country?.id}" required="required"
                          class="mt-1 block w-full border border-gray-300 rounded-lg px-3 py-2 shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <label for="stars" class="block text-lg font-semi-bold text-gray-700">Звездность:</label>
                <g:select name="stars" from="[1, 2, 3, 4, 5]" selected="${hotel.stars}" required="required"
                          class="mt-1 block w-full border border-gray-300 rounded-lg px-3 py-2 shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <label for="website" class="block text-lg font-semi-bold text-gray-700">Сайт:</label>
                <g:textField name="website" value="${hotel.website}"
                             class="mt-1 block w-full border border-gray-300 rounded-lg px-3 py-2 shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <g:submitButton name="update" value="Обновить"
                                class="bg-blue-500 text-white font-bold py-2 px-4 rounded-lg hover:bg-blue-600"/>
                <g:link action="index" class="ml-4 text-blue-500 hover:underline">Назад к списку отелей</g:link>
            </div>
        </g:form>
    </div>
</div>

</body>
</html>
