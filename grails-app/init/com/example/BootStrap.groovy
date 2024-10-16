package com.example

import com.example.Country
import com.example.Hotel

class BootStrap {

    def init = { servletContext ->
        def russia = new Country(name: 'Россия', capital: 'Москва').save(failOnError: true)
        def usa = new Country(name: 'США', capital: 'Вашингтон').save(failOnError: true)
        def germany = new Country(name: 'Германия', capital: 'Берлин').save(failOnError: true)
        def france = new Country(name: 'Франция', capital: 'Париж').save(failOnError: true)

        new Country(name: 'Италия', capital: 'Рим').save(failOnError: true)
        new Country(name: 'Испания', capital: 'Мадрид').save(failOnError: true)

        new Hotel(name: 'Звезды Арбата', country: russia, stars: 5, website: 'https://arbatstars.activhotels.ru/').save(failOnError: true)
        new Hotel(name: 'Отель Санкт-Петербург', country: russia, stars: 4).save(failOnError: true)
        new Hotel(name: 'New York Hotel', country: usa, stars: 5, website: 'https://newyorkhotel.com').save(failOnError: true)
        new Hotel(name: 'Berlin Hotel', country: germany, stars: 4).save(failOnError: true)
        new Hotel(name: 'Ritz Paris', country: france, stars: 5, website: 'https://www.ritzparis.com').save(failOnError: true)
        new Hotel(name: 'Le Meurice', country: france, stars: 5, website: 'https://www.dorchestercollection.com/paris/le-meurice').save(failOnError: true)
    }

    def destroy = {

    }
}