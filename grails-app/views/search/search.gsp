<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Поиск отелей</title>
</head>
<body>
<h1>Поиск отелей</h1>
<g:form action="find">
    <label for="hotelName">Название отеля:</label>
    <g:textField name="hotelName" />

    <label for="country">Страна:</label>
    <g:select name="countryId" from="${countries}" optionKey="id" optionValue="name" noSelection="['':'Все страны']" />

    <g:submitButton name="search" value="Найти"/>
</g:form>
</body>
</html>
