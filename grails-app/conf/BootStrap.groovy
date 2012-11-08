import littleblog.Post

class BootStrap {

    def init = { servletContext ->
        new Post(title: "First Post!", text: "Bla bla bla bla bla").save()
        new Post(title: "Second Post!", text: "Bla bla bla bla bla").save()
        new Post(title: "Third Post!", text: "Bla bla bla bla bla").save()
    }
    def destroy = {
    }
}
