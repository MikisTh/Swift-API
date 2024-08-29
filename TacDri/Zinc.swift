import Foundation

// Função para calcular a quantidade de zinco
func calcularZinco(peso: Double, idade: Int, sexo: String) -> Double {
    var zinco: Double = 0.0
    
    if sexo.lowercased() == "masculino" {
        if idade >= 19 {
            zinco = 11.0 // mg por dia para homens adultos
        } else if idade >= 14 {
            zinco = 11.0 // mg por dia para adolescentes
        } else if idade >= 9 {
            zinco = 8.0 // mg por dia para crianças
        } else if idade >= 4 {
            zinco = 5.0 // mg por dia para crianças
        } else {
            zinco = 3.0 // mg por dia para crianças
        }
    } else if sexo.lowercased() == "feminino" {
        if idade >= 19 {
            zinco = 8.0 // mg por dia para mulheres adultas
        } else if idade >= 14 {
            zinco = 9.0 // mg por dia para adolescentes
        } else if idade >= 9 {
            zinco = 8.0 // mg por dia para crianças
        } else if idade >= 4 {
            zinco = 5.0 // mg por dia para crianças
        } else {
            zinco = 3.0 // mg por dia para crianças
        }
    }
    
    return zinco
}

// Exemplo de uso
let peso = 70.0 // peso em kg
let idade = 25 // idade em anos
let sexo = "masculino" // sexo

let quantidadeZinco = calcularZinco(peso: peso, idade: idade, sexo: sexo)
print("A quantidade diária recomendada de zinco é \(quantidadeZinco) mg.")
