package com.example

class Country {
    String name
    String capital

    static hasMany = [hotels: Hotel]

    static constraints = {
        name maxSize: 255, unique: true, nullable: false
        capital maxSize: 128, nullable: false
    }

    static mapping = {
        hotels cascade: 'all-delete-orphan'
    }

    String toString() {
        name
    }
}
