<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск отелей</title>
</head>
<body>
<h1>Поиск отелей</h1>
<g:form action="search" method="GET">
    <label for="searchTerm">Название отеля:</label>
    <g:textField name="searchTerm" value="${searchTerm}" />

    <label for="country">Страна:</label>
    <g:select name="country.id" from="${countries}" optionKey="id" optionValue="name" value="${countryId}" noSelection="['':'Все страны']" />

    <g:submitButton name="search" value="Найти"/>
</g:form>
</body>
</html>
