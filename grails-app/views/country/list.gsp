<!DOCTYPE html>
<html lang="ru">
<head>
    <meta name="layout" content="main"/>
    <title>Список стран</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script type="text/javascript">
        function confirmDeletion() {
            return confirm("Вы уверены, что хотите удалить эту страну?");
        }
    </script>
</head>
<body class="container mx-auto px-4 py-6">
<h1 class="text-3xl font-semi-bold mb-6">Список стран</h1>

<table class="table-auto w-full text-left">
    <thead>
        <tr class="bg-gray-200 text-gray-600">
            <th class="px-4 py-2">Название</th>
            <th class="px-4 py-2">Столица</th>
            <th class="px-4 py-2">Действия</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${countries}" var="country">
            <tr class="border-b">
                <td class="px-4 py-2">${country.name}</td>
                <td class="px-4 py-2">${country.capital}</td>
                <td class="px-4 py-2">
                    <g:link action="edit" id="${country.id}" class="text-blue-500 hover:underline">Редактировать</g:link>
                    <g:form action="delete" method="post" onsubmit="return confirmDeletion();" class="inline">
                        <input type="hidden" name="id" value="${country.id}"/>
                        <g:submitButton name="delete" value="Удалить" class="text-red-500 hover:underline"/>
                    </g:form>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>

<g:link controller="country" action="create" class="bg-blue-500 text-white px-4 py-2 mt-4 inline-block rounded">Добавить страну</g:link>
<div class="pagination px-4 py-2 mt-4 inline-block rounded bg-white border border-gray-300">
    <g:paginate total="${total}" class="flex justify-center items-center space-x-2"/>
</div>
</body>
</html>
