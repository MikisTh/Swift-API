func fetchMusics(completionHandler: @escaping ([Music]) -> Void) {
    let url = URL(string: domainUrlString + "musics/")!

    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
      if let error = error {
        print("Erro ao obter os filmes: \(error)")
        return
      }
      
      guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
        print("Erro na responta. Código de status inesperado: \(response)")
        return
      }

      if let data = data,
        let musicSummary = try? JSONDecoder().decode(MusicSummary.self, from: data) {
        completionHandler(filmSummary.results ?? [])
      }
    })
    task.resume()
  }