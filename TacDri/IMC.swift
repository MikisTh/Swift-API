import Foundation

func calcularIMC(peso: Double, altura: Double) -> Double {
    return peso / (altura * altura)
}

func classificarIMC(imc: Double) -> String {
    switch imc {
    case ..<18.5:
        return "Magreza"
    case 18.5..<24.9:
        return "Normal"
    case 25..<29.9:
        return "Sobrepeso"
    case 30..<34.9:
        return "Obesidade grau I"
    case 35..<39.9:
        return "Obesidade grau II"
    default:
        return "Obesidade grau III"
    }
}

// Exemplo de uso
let peso = 70.0 // em kg
let altura = 1.75 // em metros

let imc = calcularIMC(peso: peso, altura: altura)
let classificacao = classificarIMC(imc: imc)

print("Seu IMC é \(imc) e a classificação é \(classificacao).")
