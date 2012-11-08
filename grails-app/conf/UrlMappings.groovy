class UrlMappings {

    static mappings = {

        "/partials/$partialName"(controller: 'partials') {
        }

        "/dynjs/$jsName"(controller: 'dynjs') {
        }

        "/api/$action?/$id?"(controller: "api", parseRequest: true) {
        }

        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "500"(view: '/error')
    }
}
