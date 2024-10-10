package com.example

import grails.gorm.transactions.Transactional

@Transactional
class CountryService {

    def listAllCountries() {
        return Country.list()
    }

    def getCountryById(Long id) {
        return Country.get(id)
    }

    def saveCountry(params) {
        def country = new Country(params)
        if (country.save(flush: true)) {
            return true
        } else {
            return false
        }
    }

    def updateCountry(Country country, params) {
        country.properties = params
        return country.save(flush: true)
    }

    def deleteCountry(Long id) {
        def country = Country.get(id)
        if (country) {
            Hotel.findAllByCountry(country).each {
                it.delete(flush: true)
            }
            country.delete(flush: true)
            return true
        }
        return false
    }
}
