import Foundation

func postRequest(url: String, params: [String: String], 
                 completion: @escaping ([String: Any]?, Error?) -> Void){
    //URL válida
    guard let URL = URL(string: url) else {
        completion(nil, nil)
        return
    }
        
    //Represetation Request
    let request = NSMutableURLRequest(url: URL)

    //Converte as chaves em valores pares para os parametros em formato de String
    let postString = params.map { "\($0.0)=\($0.1)" }.joined(separator: "&")

    //Post Request Method
    request.httpMethod = "POST"

    //Codifica o corpo da mensagem em "data" usando utf8
    request.httpBody = postString.data(using: String.Encoding.utf8)


    //New task request
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        (data, response, error) in
        do {

            if let data = data {
                //response
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                completion(response as? [String : Any], nil)
            }
            else {
                //not response
                completion(nil, nil)
            }
        } catch let error as NSError {
            //error
            completion(nil, error)
        }
    }

//Task on
    task.resume()
}

//URL API
let url = "https://www.tbca.net.br/base-dados/busca_componente.php"

//Params requisition
let params = [
            "nome":"Thiago Mikis",
            "sobreNome":"Mikis",
        ]

//Call function POST
postRequest(url: url, params: params){
                    (result, err)  in
                    //Result
                    if let res:Bool = (result?.values.first as? Bool) {
                        if(res) {
                            //true and false
                            print("Sua requisicao foi realizada com êxito!")
                        } else {
                            //error
                            print("Sua requisicao falhou!")
                        }
                    }
                }
