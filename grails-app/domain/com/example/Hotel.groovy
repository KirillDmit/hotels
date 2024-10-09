package com.example

class Hotel {
    String name
    Country country
    Integer stars
    String website

    static constraints = {
        name maxSize: 255, unique: ['country'], nullable: false
        country nullable: false
        stars range: 1..5, nullable: false
        website nullable: true, url: true, matches: "(http|https)://.*"
    }

    String toString() {
        name
    }
}
