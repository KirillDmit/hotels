package com.example

import com.example.Country
import grails.gorm.transactions.Transactional

class HotelController {

    def index() {
        def hotels = Hotel.list()
        render(view: 'list', model: [hotels: hotels])
    }

    @Transactional
    def create() {
        if (request.method == 'POST') {
            def hotel = new Hotel(params)
            if (hotel.save(flush: true)) {
                flash.message = "Отель успешно добавлен."
                redirect(action: 'index')
            } else {
                render(view: 'create', model: [hotel: hotel])
            }
        } else {
            def countries = Country.list()
            render(view: 'create', model: [countries: countries])
        }
    }

    @Transactional
    def edit(Long id) {
        def hotel = Hotel.get(id)
        if (!hotel) {
            flash.message = "Отель не найден."
            redirect(action: 'index')
            return
        }

        if (request.method == 'POST') {
            hotel.properties = params
            if (hotel.save(flush: true)) {
                flash.message = "Отель успешно обновлен."
                redirect(action: 'index')
            } else {
                render(view: 'edit', model: [hotel: hotel])
            }
        } else {
            def countries = Country.list()
            render(view: 'edit', model: [hotel: hotel, countries: countries])
        }
    }

    @Transactional
    def delete(Long id) {
        def hotel = Hotel.get(id)
        if (!hotel) {
            flash.message = "Отель не найден."
            redirect(action: 'index')
            return
        }

        if (request.method == 'POST') {
            hotel.delete(flush: true)
            flash.message = "Отель успешно удален."
            redirect(action: 'index')
        } else {
            render(view: 'delete', model: [hotel: hotel])
        }
    }
}
