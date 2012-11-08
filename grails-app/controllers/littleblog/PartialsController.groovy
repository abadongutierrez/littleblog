package littleblog

class PartialsController {

    def index() {
        render(template: "${params.partialName}")
    }
}
