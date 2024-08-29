import Foundation

func calcularGET(geb: Double, fa: Double, fe: Double, ft: Double) -> Double {
    return geb * fa * fe * ft
}

// Exemplo de uso
let geb = 1500.0 // Gasto Energético Basal em calorias
let fa = 1.3 // Fator de Atividade Física
let fe = 1.2 // Fator de Estresse
let ft = 1.1 // Fator Térmico

let get = calcularGET(geb: geb, fa: fa, fe: fe, ft: ft)
print("O Gasto Energético Total é \(get) calorias por dia.")
