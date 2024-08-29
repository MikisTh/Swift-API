import Foundation

func calcularGastoEnergetico(met: Double, peso: Double, tempo: Double) -> Double {
    return met * peso * tempo
}

// Exemplo de uso
let met = 5.0 // MET da atividade
let peso = 80.0 // Peso corporal em kg
let tempo = 1.5 // Tempo da atividade em horas

let gastoEnergetico = calcularGastoEnergetico(met: met, peso: peso, tempo: tempo)
print("Gasto energético: \(gastoEnergetico) kcal")
