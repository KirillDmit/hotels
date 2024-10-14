<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Добавить отель</title>
</head>
<body class="bg-gray-100 text-gray-800">
<div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold text-center mb-8">Добавить отель</h1>

    <div class="max-w-lg mx-auto bg-white p-6 rounded-lg shadow-md">
        <g:form action="create" method="post" class="space-y-6">
            <div>
                <label for="name" class="block text-sm font-medium text-gray-700">Название отеля</label>
                <g:textField name="name" required="required" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <label for="country" class="block text-sm font-medium text-gray-700">Страна</label>
                <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name" required="required" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <label for="stars" class="block text-sm font-medium text-gray-700">Звездность</label>
                <g:select name="stars" from="[1, 2, 3, 4, 5]" required="required" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <label for="website" class="block text-sm font-medium text-gray-700">Сайт</label>
                <g:textField name="website" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <g:submitButton name="save" value="Сохранить" class="w-full bg-indigo-600 text-white py-2 px-4 rounded-md shadow-sm hover:bg-indigo-700 focus:ring-2"/>
            </div>
        </g:form>

        <div class="mt-6 text-center">
            <g:link action="index" class="text-indigo-600 hover:underline">Назад к списку отелей</g:link>
        </div>
    </div>
</div>
</body>
</html>
