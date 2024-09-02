postRequest(url: url, params: params){
                    (result, err)  in
                    if let res:Bool = (result?.values.first as? Bool) {
                        if(res) {                           
                            print("Sua requisicao foi realizada com êxito!")
                        } else {
                            print("Sua requisicao falhou!")
                        }
                    }
                }
