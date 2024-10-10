package com.example

import grails.gorm.transactions.Transactional

@Transactional
class HotelService {

    def listAllHotels() {
        return Hotel.list()
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
}