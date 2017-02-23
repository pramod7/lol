import Vapor

let drop = Droplet()

// simply print message on chrome page
//drop.get("NewWebAPI") { request in
//    return "Hello, Google Chrome!"
//}

// simply pass parameter value
//drop.get("/name",":name") { request in
//    if let name = request.parameters["name"]?.string {
//        return "Hello \(name)!"
//    }
//    return "Error retrieving parameters."
//}

//simply load html file
//drop.get("html") { request in
//    return try drop.view.make("contactus.html")
//}

drop.get("template") { request in
    return try drop.view.make("welcome", [
        "message": "Hello, world!"
        ])
}

drop.resource("posts", PostController())

drop.run()
