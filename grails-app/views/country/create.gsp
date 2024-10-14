<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Добавить страну</title>
</head>
<body class="bg-gray-100 text-gray-800">
<div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold text-center mb-8">Добавить страну</h1>

    <div class="max-w-lg mx-auto bg-white p-6 rounded-lg shadow-md">
        <g:form action="create" method="post" class="space-y-6">
            <div>
                <label for="name" class="block text-sm font-medium text-gray-700">Название страны</label>
                <g:textField name="name" required="required" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <label for="capital" class="block text-sm font-medium text-gray-700">Столица</label>
                <g:textField name="capital" required="required" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-indigo-500"/>
            </div>

            <div>
                <g:submitButton name="save" value="Сохранить" class="w-full bg-indigo-600 text-white py-2 px-4 rounded-md shadow-sm hover:bg-indigo-700 focus:ring-2"/>
            </div>
        </g:form>

        <div class="mt-6 text-center">
            <g:link action="index" class="text-indigo-600 hover:underline">Назад к списку стран</g:link>
        </div>
    </div>
</div>
</body>
</html>
