<g:form action="search">
    <input type="text" name="name" placeholder="Название отеля"/>
    <g:select name="country" from="${com.example.Country.list()}" optionKey="id" optionValue="name"/>
    <g:submitButton name="find" value="Найти"/>
</g:form>
