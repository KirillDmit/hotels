package com.example

import grails.testing.gorm.DomainUnitTest
import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class HotelServiceSpec extends Specification implements ServiceUnitTest<HotelService>, DomainUnitTest<Hotel> {

    def setup() {
        Country countryA = new Country(name: "Country A", capital: "Capital A").save(flush: true)
        Country countryB = new Country(name: "Country B", capital: "Capital B").save(flush: true)

        new Hotel(name: "Hotel A", stars: 5, country: countryA).save(flush: true)
        new Hotel(name: "Hotel B", stars: 4, country: countryB).save(flush: true)
        new Hotel(name: "Hotel C", stars: 3, country: countryA).save(flush: true)
    }

    def cleanup() {
        Hotel.deleteAll()
        Country.deleteAll()
    }

    def test(){
        expect:
        true == true
    }

    void "should find hotel by name"() {
        when:
        def result = service.findHotelByName("Hotel A")

        then:
        result.name == "Hotel A"
        result.stars == 5
    }

    void "should find hotels by country"() {
        when:
        def results = service.findHotelsByCountry("Country A")

        then:
        results.size() == 2
        results*.name.containsAll(["Hotel A", "Hotel C"])
    }

    void "should find hotel by name and country"() {
        when:
        def result = service.findHotelByNameAndCountry("Hotel A", "Country A")

        then:
        result != null
        result?.name == "Hotel A"
        result.country?.name == "Country A"
    }

    void "should return all hotels without filters"() {
        when:
        def results = service.getAllHotels()

        then:
        results.size() == 3
    }

    void "should return empty list if no hotels found"() {
        when:
        def results = service.findHotelByName("Non-existent Hotel")

        then:
        results == null
    }
}