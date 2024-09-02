import Foundation

func getRequest(url: String,
                 completion: @escaping ([String: Any]?, Error?) -> Void){
    //URL válida
    guard let URL = URL(string: url) else {
        completion(nil, nil)
        return
    }
    
    //Cria a representacão da requisição
    let request = NSMutableURLRequest(url: URL)
    
    //Request method GET
    request.httpMethod = "GET"
      
    //Cria a tarefa de requisição
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        (data, response, error) in
        do {
            
            if let data = data {
                // response sucess
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                completion(response as? [String : Any], nil)
            }
            else {
                //no response
                completion(nil, nil)
            }
        } catch let error as NSError {
            // error comunication server
            completion(nil, error)
        }
    }
    
    
//on task
    task.resume()
    
}

// URL API
let url = "https://www.tbca.net.br/base-dados/busca_componente.php"

//Call Function Get
getRequest(url: url){
    (resultado, erro)  in
      if(resultado != nil) {          
          print("Sua requisicao foi realizada com êxito! : \n \(resultado)")
      } else {
          print("A requisicao falhou!")
      }
      
}
