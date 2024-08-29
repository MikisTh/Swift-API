import Foundation

// Definindo uma estrutura para alimentos
struct Alimento {
    let nome: String
    let vitaminaA: Double // em microgramas (µg)
}

// Função para calcular a ingestão total de vitamina A
func calcularVitaminaATotal(alimentos: [Alimento]) -> Double {
    var totalVitaminaA: Double = 0.0
    for alimento in alimentos {
        totalVitaminaA += alimento.vitaminaA
    }
    return totalVitaminaA
}

// Exemplo de uso
let alimentosConsumidos = [
    Alimento(nome: "Cenoura", vitaminaA: 835.0),
    Alimento(nome: "Espinafre", vitaminaA: 469.0),
    Alimento(nome: "Batata doce", vitaminaA: 709.0)
]

let totalVitaminaA = calcularVitaminaATotal(alimentos: alimentosConsumidos)
print("Total de Vitamina A consumida: \(totalVitaminaA) µg")
