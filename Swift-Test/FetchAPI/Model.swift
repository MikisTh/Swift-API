import Foundation 

struct Registro:Decodable {
    let idRegistro:Int
    let idUser:int
    let idFood:String
    let categoria:String
    let descrição:String
    let quantidade:String

}