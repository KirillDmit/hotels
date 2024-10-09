package com.example

import grails.gorm.transactions.Transactional

class CountryController {
    def index() {
        def countries = Country.list()
        render(view: 'list', model: [countries: countries])
    }

    @Transactional
    def create() {
        if (request.method == 'POST') {
            def country = new Country(params)
            if (country.save(flush: true)) {
                flash.message = "Страна успешно добавлена."
                redirect(action: 'index')
            } else {
                render(view: 'create', model: [country: country])
            }
        } else {
            render(view: 'create')
        }
    }

    @Transactional
    def edit(Long id) {
        def country = Country.get(id)
        if (!country) {
            flash.message = "Страна не найдена."
            redirect(action: 'index')
            return
        }

        if (request.method == 'POST') {
            country.properties = params
            if (country.save(flush: true)) {
                flash.message = "Страна успешно обновлена."
                redirect(action: 'index')
            } else {
                render(view: 'edit', model: [country: country])
            }
        } else {
            render(view: 'edit', model: [country: country])
        }
    }

    @Transactional
    def delete(Long id) {
        def country = Country.get(id)
        if (country) {
            country.delete(flush: true)
            flash.message = "Страна успешно удалена."
        } else {
            flash.message = "Страна не найдена."
        }
        redirect(action: 'index')
    }
}
