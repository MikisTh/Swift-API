import Foundation

// Estrutura para representar um alimento
struct Alimento {
    let nome: String
    let quantidade: Double // em gramas
    let vitaminaE: Double // em mg por 100g
}

// Função para calcular a quantidade total de vitamina E
func calcularVitaminaETotal(alimentos: [Alimento]) -> Double {
    var totalVitaminaE: Double = 0.0
    
    for alimento in alimentos {
        let vitaminaEPorAlimento = (alimento.quantidade / 100) * alimento.vitaminaE
        totalVitaminaE += vitaminaEPorAlimento
    }
    
    return totalVitaminaE
}

// Exemplo de uso
let alimentosConsumidos = [
    Alimento(nome: "Amêndoas", quantidade: 50, vitaminaE: 25.6),
    Alimento(nome: "Espinafre", quantidade: 100, vitaminaE: 2.1),
    Alimento(nome: "Abacate", quantidade: 150, vitaminaE: 2.1)
]

let totalVitaminaE = calcularVitaminaETotal(alimentos: alimentosConsumidos)
print("Total de Vitamina E consumida: \(totalVitaminaE) mg")
