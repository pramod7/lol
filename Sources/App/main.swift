import Vapor

let drop = Droplet()

 //simply print message on chrome page
//drop.get("NewWebAPI") { request in
//    return "Hello, I-Phone!"
//}

// simply pass parameter value
//drop.get("/name",":name") { request in
//    if let name = request.parameters["name"]?.string {
//        return "Hello \(name)!"
//    }
//    return "Error retrieving parameters."
//}

// simply pass int parameter value
drop.get("customer",Int.self) { request, id in
    return "The passed id is\(id)"
}

//simply load html file
//drop.get("html") { request in
//    return try drop.view.make("contactus.html")
//}

//drop.get("template") { request in
//    return try drop.view.make("welcome", [
//        "message": "Hello, world!"
//        ])
//}

drop.resource("posts", PostController())

drop.run()
