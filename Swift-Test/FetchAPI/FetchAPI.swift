func fetchTaco(completionHandler: @escaping ([Taco]) -> Void) {
    let url = URL(string: https://www.tbca.net.br/base-dados/busca_componente.php + "Taco/")!

    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
      if let error = error {
        print("Error: \(error)")
        return
      }
      
      guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
        print("Error with the response, unexpected status code: \(response)")
        return
      }

      if let data = data,
        let tacoSummary = try? JSONDecoder().decode(TacoSummary.self, from: data) {
        completionHandler(tacoSummary.results ?? [])
      }
    })
    task.resume()
  }
