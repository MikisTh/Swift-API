import Foundation

struct Music: Codable, Identifiable {
    let id = UUID()
    var author: String
    var album: String
    var title: String
}

class Api : ObservableObject{
    @Published var musics = [Music]()
    
    func loadData(completion:@escaping ([Music]) -> ()) {
        guard let url = URL(string: "url?") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let musics = try! JSONDecoder().decode([Music].self, from: data!)
            print(musics)
            DispatchQueue.main.async {
                completion(musics)
            }
        }.resume()
        
    }
}