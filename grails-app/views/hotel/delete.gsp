<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Удаление отеля</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
    <h1 class="text-2xl font-bold text-gray-800 mb-6 text-center">Подтверждение удаления отеля</h1>

    <div class="text-gray-700 mb-4">
        <p><strong>Название отеля:</strong> ${hotel.name}</p>
        <p><strong>Страна:</strong> ${hotel.country.name}</p>
        <p><strong>Звездность:</strong> ${hotel.stars}</p>
    </div>

    <g:form action="delete" method="post">
        <input type="hidden" name="id" value="${hotel.id}"/>
        <div class="flex justify-between mt-6">
            <g:submitButton name="delete" value="Удалить" class="bg-red-500 text-white font-bold py-2 px-4 rounded-lg hover:bg-red-600"/>
            <g:link action="index" class="bg-gray-300 text-gray-700 font-bold py-2 px-4 rounded-lg hover:bg-gray-400">Отмена</g:link>
        </div>
    </g:form>
</div>

</body>
</html>
