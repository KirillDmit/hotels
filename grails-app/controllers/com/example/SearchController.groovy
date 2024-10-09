package com.example

class SearchController {

    def index() {
        def countries = Country.list()
        render(view: "search", model: [countries: countries])
    }

    def find() {
        def hotels = Hotel.createCriteria().list {
            if (params.hotelName) {
                ilike('name', "%${params.hotelName}%")
            }
            if (params.countryId) {
                eq('country.id', params.long('countryId'))
            }
            order('stars', 'desc')
            order('name', 'asc')
        }

        render(view: 'results', model: [hotels: hotels])
    }
}
