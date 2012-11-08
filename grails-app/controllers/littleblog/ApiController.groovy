package littleblog

import grails.converters.JSON
import org.springframework.http.HttpStatus

class ApiController {

    def name() {
        render text: [name: "Bob!"] as JSON, contentType: "application/json", status: HttpStatus.OK.value()
    }

    def posts() {
        render text: [posts: Post.findAll()] as JSON, contentType: "application/json", status: HttpStatus.OK.value()
    }

    def post() {
        if (request.method == "POST") {
            def post = new Post(params)
            post.save(flush: true, failOnError: true, validate: true)
            render text: post as JSON, contentType: "application/json", status: HttpStatus.OK.value()
        }
        else if (request.method == "GET") {
            if (params.id) {
                render text: [post: Post.findById(params.id)] as JSON, contentType: "application/json", status: HttpStatus.OK.value()
            }
            else {
                redirect(action: 'posts')
            }
        }
        else if (request.method == "DELETE") {
            if (params.id) {
                def post = Post.findById(params.id)
                post.delete()
                render text: [] as JSON, contentType: "application/json", status: HttpStatus.OK.value()
            }
        }
        else if (request.method == "PUT") {
            if (params.id) {
                def post = Post.findById(params.id)
                post.title = params.post.title
                post.text = params.post.text
                post.save(flush: true, failOnError: true, validate: true)
                render text: [post: post] as JSON, contentType: "application/json", status: HttpStatus.OK.value()
            }
        }
        else {
            throw new RuntimeException("Method not supported")
        }
    }
}
