package com.example

import com.example.Country
import grails.gorm.transactions.Transactional

class HotelController {

    HotelService hotelService
    CountryService countryService

    def index() {
        def hotels = hotelService.listAllHotels()
        render(view: 'list', model: [hotels: hotels])
    }

    def create() {
        def countries = countryService.listAllCountries()
        if (request.method == 'POST') {
            def hotel = new Hotel(params)
            if (hotelService.saveHotel(params)) {
                flash.message = "Отель успешно добавлен."
                redirect(action: 'index')
            } else {
                render(view: 'create', model: [countries: countries, hotel: hotel])
            }
        } else {
            render(view: 'create', model: [countries: countries])
        }
    }

    def edit(Long id) {
        def hotel = hotelService.getHotelById(id)
        if (!hotel) {
            flash.message = "Отель не найден."
            redirect(action: 'index')
            return
        }

        def countries = countryService.listAllCountries()
        if (request.method == 'POST') {
            if (hotelService.updateHotel(hotel, params)) {
                flash.message = "Отель успешно обновлен."
                redirect(action: 'index')
            } else {
                render(view: 'edit', model: [hotel: hotel, countries: countries])
            }
        } else {
            render(view: 'edit', model: [hotel: hotel, countries: countries])
        }
    }

    def delete(Long id) {
        if (hotelService.deleteHotel(id)) {
            flash.message = "Отель успешно удален."
        } else {
            flash.message = "Отель не найден."
        }
        redirect(action: 'index')
    }
}
