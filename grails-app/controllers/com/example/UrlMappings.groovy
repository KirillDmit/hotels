package com.example

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'search', action: 'index')
        "/home"(view:"/home")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
