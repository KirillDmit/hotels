<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><g:layoutTitle default="My Grails Application" /></title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="${resource(dir:'css',file:'main.css')}" rel="stylesheet">
    <g:layoutHead/>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">
<header>
    <nav class="bg-white shadow-md">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <a href="${createLink(controller: 'search', action: 'index')}" class="text-xl font-bold text-gray-800">Home</a>
            <ul class="flex space-x-6">
                <li><g:link class="text-gray-700 hover:text-gray-900" controller="search" action="index">Поиск</g:link></li>
                <li><g:link class="text-gray-700 hover:text-gray-900" controller="hotel" action="index">Отели</g:link></li>
                <li><g:link class="text-gray-700 hover:text-gray-900" controller="country" action="index">Страны</g:link></li>
            </ul>
        </div>
    </nav>
</header>

<section class="container mx-auto px-4 py-6">
    <g:layoutBody/>
</section>

<footer class="bg-white border-t mt-10 py-4">
    <div class="container mx-auto text-center text-gray-600">
        &copy; 2024 My Grails Application
    </div>
</footer>
</body>
</html>
