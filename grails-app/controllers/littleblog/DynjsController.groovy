package littleblog

class DynjsController {

    def index() {
        render template: "${params.jsName}", contentType: "text/javascript"
    }
}
