// APIClient.swift

func fetchTaco(completion: @escaping (Result<[Taco], Error>) -> Void) {

    guard let url = URL(string: "https://www.tbca.net.br/base-dados/busca_componente.php") else {
        return 
    }

    URLSession.shared.dataTask(with: url) { data, response, error in

        // Handle response here

    }.resume()

}

func Taco(completion: @escaping (Result<[Taco], Error>) -> Void)) {

    // Existing request logic

    URLSession.shared.dataTask(with: url) { data, _, error in

        guard let data = data else { 
            return completion(.failure(error))  
        }

        let decoder = JSONDecoder()

        do {
            let Taco = try decoder.decode(Taco.self, from: data)
            completion(.success(Taco.results)) 
        } catch {
            completion(.failure(error))
        }

    }.resume()   
}

func Taco() {

    APIClient().fetchTaco { result in

        switch result {

            case .success(let foods):

                DispatchQueue.main.async {
                    self.taco = foods
                    self.tableView.reloadData()
                }

            case .failure(let error):
                print(error)

        }

    }

}
