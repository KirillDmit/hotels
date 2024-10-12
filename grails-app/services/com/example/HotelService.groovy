package com.example

import grails.gorm.transactions.Transactional

@Transactional
class HotelService {

    def getAllHotels() {
        return Hotel.list()
    }

    def listHotels(Map params) {
        return Hotel.list(params)
    }

    def countHotels() {
        return Hotel.count()
    }

    def getHotelById(Long id) {
        return Hotel.get(id)
    }

    def saveHotel(params) {
        def hotel = new Hotel(params)
        if (hotel.save(flush: true)) {
            return true
        } else {
            return false
        }
    }

    def updateHotel(Hotel hotel, params) {
        hotel.properties = params
        return hotel.save(flush: true)
    }

    def deleteHotel(Long id) {
        def hotel = Hotel.get(id)
        if (hotel) {
            hotel.delete(flush: true)
            return true
        }
        return false
    }

    Hotel findHotelByName(String name) {
        return Hotel.findByName(name)
    }

    List<Hotel> findHotelsByCountry(String countryName) {
        return Hotel.createCriteria().list {
            country {
                eq("name", countryName)
            }
        }
    }

    Hotel findHotelByNameAndCountry(String hotelName, String countryName) {
        return Hotel.createCriteria().get {
            eq("name", hotelName)
            country {
                eq("name", countryName)
            }
        }
    }

    def searchHotels(String searchTerm, Long countryId, Map params) {
        def criteria = Hotel.createCriteria()
        return criteria.list(params) {
            if (searchTerm) {
                ilike('name', "%${searchTerm}%")
            }
            if (countryId) {
                eq('country.id', countryId)
            }
            order('stars', 'desc')
            order('name', 'asc')
        }
    }

    def countHotelsBySearch(String searchTerm, Long countryId) {
        def criteria = Hotel.createCriteria()
        return criteria.count {
            if (searchTerm) {
                ilike('name', "%${searchTerm}%")
            }
            if (countryId) {
                eq('country.id', countryId)
            }
        }
    }
}