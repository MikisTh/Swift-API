let task = URLSession.shared.dataTask(with: request){ data, response, error in
    if let error = error {
        print("Error while fetching data:", error)
        return
    }

    guard let data = data else {
        return
    }

do {
        let posts = try JSONDecoder().decode([Post].self, from: data) 
        
        for post in posts {
            print("User ID:", post.userId)
            print("Id:", post.id)
            print("nome:":", post.nome)
            print("imc:", post.imc)
        }
    } catch let jsonError {
        print("Failed to decode json", jsonError)
    }

}