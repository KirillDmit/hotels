package com.example

import grails.gorm.transactions.Transactional

class CountryController {

    CountryService countryService

    def index() {
        def countries = countryService.listAllCountries()
        render(view: 'list', model: [countries: countries])
    }

    def create() {
        if (request.method == 'POST') {
            if (countryService.saveCountry(params)) {
                flash.message = "Страна успешно добавлена."
                redirect(action: 'index')
            } else {
                render(view: 'create')
            }
        } else {
            render(view: 'create')
        }
    }

    def edit(Long id) {
        def country = countryService.getCountryById(id)
        if (!country) {
            flash.message = "Страна не найдена."
            redirect(action: 'index')
            return
        }

        if (request.method == 'POST') {
            if (countryService.updateCountry(country, params)) {
                flash.message = "Страна успешно обновлена."
                redirect(action: 'index')
            } else {
                render(view: 'edit', model: [country: country])
            }
        } else {
            render(view: 'edit', model: [country: country])
        }
    }

    def delete(Long id) {
        if (countryService.deleteCountry(id)) {
            flash.message = "Страна успешно удалена."
        } else {
            flash.message = "Страна не найдена."
        }
        redirect(action: 'index')
    }
}
