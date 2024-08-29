import Foundation

// Função para calcular o GEB usando a equação de Harris-Benedict
func calcularGEB(peso: Double, altura: Double, idade: Int, sexo: String) -> Double {
    if sexo.lowercased() == "masculino" {
        return 88.36 + (13.4 * peso) + (4.8 * altura) - (5.7 * Double(idade))
    } else {
        return 447.6 + (9.2 * peso) + (3.1 * altura) - (4.3 * Double(idade))
    }
}

// Função para calcular o VET
func calcularVET(geb: Double, atividadeFisica: Double, eta: Double) -> Double {
    return geb + atividadeFisica + eta
}

// Exemplo de uso
let peso = 70.0 // em kg
let altura = 175.0 // em cm
let idade = 25
let sexo = "masculino"
let atividadeFisica = 500.0 // Exemplo de gasto energético da atividade física
let eta = 200.0 // Exemplo de efeito térmico dos alimentos

let geb = calcularGEB(peso: peso, altura: altura, idade: idade, sexo: sexo)
let vet = calcularVET(geb: geb, atividadeFisica: atividadeFisica, eta: eta)

print("O Valor Energético Total (VET) é \(vet) calorias.")
