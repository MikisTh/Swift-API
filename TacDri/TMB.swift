import Foundation

func calcularTMB(peso: Double, altura: Double, idade: Int, sexo: String) -> Double {
    var tmb: Double = 0.0
    
    if sexo.lowercased() == "masculino" {
        tmb = 88.36 + (13.4 * peso) + (4.8 * altura) - (5.7 * Double(idade))
    } else if sexo.lowercased() == "feminino" {
        tmb = 447.6 + (9.2 * peso) + (3.1 * altura) - (4.3 * Double(idade))
    }
    
    return tmb
}

// Exemplo de uso
let peso = 70.0 // em kg
let altura = 175.0 // em cm
let idade = 25
let sexo = "masculino"

let tmb = calcularTMB(peso: peso, altura: altura, idade: idade, sexo: sexo)
print("A TMB é \(tmb) calorias por dia.")
