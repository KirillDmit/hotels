package com.example

class Country {
    String name
    String capital

    static constraints = {
        name maxSize: 255, unique: true, nullable: false
        capital maxSize: 128, nullable: false
    }

    String toString() {
        name
    }
}
