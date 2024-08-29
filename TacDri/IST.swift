import Foundation

func calcularFerroSerico(hemoglobina: Double, hematocrito: Double, transferrina: Double) -> Double {
    // Fórmula simplificada para cálculo do ferro sérico
    let ferroSerico = (hemoglobina * 0.34) + (hematocrito * 0.003) + (transferrina * 0.1)
    return ferroSerico
}

// Exemplo de uso
let hemoglobina = 13.5 // valor em g/dL
let hematocrito = 40.0 // valor em %
let transferrina = 300.0 // valor em mg/dL

let resultadoFerroSerico = calcularFerroSerico(hemoglobina: hemoglobina, hematocrito: hematocrito, transferrina: transferrina)
print("O ferro sérico calculado é: \(resultadoFerroSerico) µg/dL")

func calcularIST(ferroSerico: Double, transferrina: Double) -> Double {
    return (ferroSerico / transferrina) * 100
}

// Exemplo de uso
let ferroSerico = 120.0 // valor em µg/dL
let transferrina = 300.0 // valor em mg/dL

let ist = calcularIST(ferroSerico: ferroSerico, transferrina: transferrina)
print("O Índice de Saturação da Transferrina é \(ist)%")