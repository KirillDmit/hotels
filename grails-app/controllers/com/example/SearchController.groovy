package com.example

class SearchController {

    HotelService hotelService
    CountryService countryService

    def index() {
        def countries = countryService.listAllCountries()
        render(view: "search", model: [countries: countries])
    }

    def search(Integer max, Integer offset) {
        params.max = Math.min(max ?: 5, 50)
        params.offset = offset ?: 0
        def searchTerm = params.searchTerm
        def countryId = params.country?.id ? params.country.id.toLong() : null
        def hotels = hotelService.searchHotels(searchTerm, countryId, params)
        def total = hotelService.countHotelsBySearch(searchTerm, countryId)

        render(view: 'results', model: [hotels: hotels, total: total, searchTerm: searchTerm, countryId: countryId])
    }
}
