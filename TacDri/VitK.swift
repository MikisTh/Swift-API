import Foundation

// Estrutura para representar um alimento
struct Alimento {
    let nome: String
    let vitaminaK: Double // em microgramas (mcg)
}

// Função para calcular a quantidade total de vitamina K
func calcularVitaminaKTotal(alimentos: [Alimento]) -> Double {
    var totalVitaminaK: Double = 0.0
    for alimento in alimentos {
        totalVitaminaK += alimento.vitaminaK
    }
    return totalVitaminaK
}

// Exemplo de uso
let alimentosConsumidos = [
    Alimento(nome: "Couve-de-bruxelas cozida", vitaminaK: 460),
    Alimento(nome: "Brócolis cozidos", vitaminaK: 248),
    Alimento(nome: "Espinafre cru", vitaminaK: 120)
]

let totalVitaminaK = calcularVitaminaKTotal(alimentos: alimentosConsumidos)
print("Total de vitamina K consumida: \(totalVitaminaK) mcg")
