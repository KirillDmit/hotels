<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Поиск отелей</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
<div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold text-gray-800 mb-6 text-center">Поиск отелей</h1>

    <div class="max-w-md mx-auto bg-white p-6 rounded-lg shadow-md">
        <g:form action="search" method="GET" class="space-y-6">
            <div>
                <label for="searchTerm" class="block text-lg font-medium text-gray-700">Название отеля:</label>
                <g:textField name="searchTerm" value="${searchTerm}" placeholder="Введите название" class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <label for="country" class="block text-lg font-medium text-gray-700">Страна:</label>
                <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name" value="${countryId}" noSelection="['':'Все страны']" class="mt-1 block w-full border border-gray-300 rounded-lg shadow-sm focus:border-blue-500"/>
            </div>

            <div>
                <g:submitButton name="search" value="Найти" class="w-full bg-blue-500 text-white font-bold py-2 px-4 rounded-lg hover:bg-blue-600"/>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>
