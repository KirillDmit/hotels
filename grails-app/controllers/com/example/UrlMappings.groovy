package com.example

class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/home"(view:"/home")
        "/find"(view:"/find")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
