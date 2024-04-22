struct ToDo: Decodable {
    
let userId: Int
let id: Int
let title: String
let isComplete: Bool

enum CodingKeys: String, CodingKey {
    case isComplete = "completed"
    case userId, id, title
}
}

extension URLSession {
  func fetchData<T: Decodable>(for url: URL, completion: @escaping (Result<T, Error>) -> Void) {
    self.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completion(.failure(error))
      }

      if let data = data {
        do {
          let object = try JSONDecoder().decode(T.self, from: data)
          completion(.success(object))
        } catch let decoderError {
          completion(.failure(decoderError))
        }
      }
    }.resume()
  }
}

let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
  URLSession.shared.fetchData(for: url) { (result: Result<[ToDo], Error>) in
    switch result {
    case .success(let toDos):
      // A list of todos!
    case .failure(let error):
      // A failure, please handle
  }
}