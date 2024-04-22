func decodeAPI(){
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else{return}

    let task = URLSession.shared.dataTask(with: url){
        data, response, error in
        
        let decoder = JSONDecoder()

        if let data = data{
            do{
                let tasks = try decoder.decode([Post].self, from: data)
                tasks.forEach{ i in
                    print(i.title)
                }
            }catch{
                print(error)
            }
        }
    }
    task.resume()

}
decodeAPI()