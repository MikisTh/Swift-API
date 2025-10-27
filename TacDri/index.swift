//Mensagem inicial 
let saudacao = "Olá"
let nome = "Usuário"
let mensagem = saudacao + ", " + nome + "!""Seja bem vindo!"
print(mensagem)

//Função de Cálculo imc
func imc(a: Int, b: Int) -> Int {
    return a / b * b
}

let resultado = imc (a: 5, b: 3)
print("O IMC é \(resultado)")

import Foundation

// Estrutura que representa um alimento com teores vitamínicos (por 100g)
struct Alimento {
    let nome: String
    
    // Vitaminas lipossolúveis (µg ou mg por 100g)
    let vitaminaA: Double  // µg RAE
    let vitaminaD: Double  // µg
    let vitaminaE: Double  // mg
    let vitaminaK: Double  // µg
    
    // Vitaminas hidrossolúveis (mg ou µg por 100g)
    let vitaminaC: Double  // mg
    let vitaminaB1: Double // mg
    let vitaminaB2: Double // mg
    let vitaminaB3: Double // mg
    let vitaminaB5: Double // mg
    let vitaminaB6: Double // mg
    let vitaminaB7: Double // µg
    let vitaminaB9: Double // µg
    let vitaminaB12: Double // µg
}

// Classe responsável pelos cálculos
class CalculadoraVitaminas {

    // API - TACO 
    // Base de dados simplificada (valores médios por 100g)
    let alimentos: [Alimento] = [
        Alimento(nome: "Ovo cozido", vitaminaA: 140, vitaminaD: 2.0, vitaminaE: 1.0, vitaminaK: 0.3,
                 vitaminaC: 0.0, vitaminaB1: 0.04, vitaminaB2: 0.5, vitaminaB3: 0.1,
                 vitaminaB5: 1.4, vitaminaB6: 0.1, vitaminaB7: 10.0, vitaminaB9: 47.0, vitaminaB12: 1.1),
        
        Alimento(nome: "Leite integral", vitaminaA: 68, vitaminaD: 0.1, vitaminaE: 0.1, vitaminaK: 0.3,
                 vitaminaC: 1.0, vitaminaB1: 0.04, vitaminaB2: 0.18, vitaminaB3: 0.1,
                 vitaminaB5: 0.35, vitaminaB6: 0.04, vitaminaB7: 3.0, vitaminaB9: 5.0, vitaminaB12: 0.4),
        
        Alimento(nome: "Salmão", vitaminaA: 50, vitaminaD: 10.0, vitaminaE: 2.5, vitaminaK: 0.0,
                 vitaminaC: 0.0, vitaminaB1: 0.2, vitaminaB2: 0.2, vitaminaB3: 8.5,
                 vitaminaB5: 1.5, vitaminaB6: 0.8, vitaminaB7: 5.0, vitaminaB9: 10.0, vitaminaB12: 4.0),
        
        Alimento(nome: "Laranja", vitaminaA: 11, vitaminaD: 0.0, vitaminaE: 0.2, vitaminaK: 0.0,
                 vitaminaC: 53.0, vitaminaB1: 0.09, vitaminaB2: 0.04, vitaminaB3: 0.3,
                 vitaminaB5: 0.25, vitaminaB6: 0.06, vitaminaB7: 1.0, vitaminaB9: 30.0, vitaminaB12: 0.0)
    ]
    
    /// Função que calcula o total de vitaminas ingeridas com base no alimento e quantidade
    func calcularVitaminas(alimentoNome: String, quantidade: Double) {
        guard let alimento = alimentos.first(where: { $0.nome.lowercased() == alimentoNome.lowercased() }) else {
            print("❌ Alimento não encontrado na base de dados.")
            return
        }
        
        // Fator de conversão (porção real)
        let fator = quantidade / 100.0
        
        // Vitaminas lipossolúveis
        let totalA = alimento.vitaminaA * fator
        let totalD = alimento.vitaminaD * fator
        let totalE = alimento.vitaminaE * fator
        let totalK = alimento.vitaminaK * fator
        
        // Vitaminas hidrossolúveis
        let totalC = alimento.vitaminaC * fator
        let totalB1 = alimento.vitaminaB1 * fator
        let totalB2 = alimento.vitaminaB2 * fator
        let totalB3 = alimento.vitaminaB3 * fator
        let totalB5 = alimento.vitaminaB5 * fator
        let totalB6 = alimento.vitaminaB6 * fator
        let totalB7 = alimento.vitaminaB7 * fator
        let totalB9 = alimento.vitaminaB9 * fator
        let totalB12 = alimento.vitaminaB12 * fator
        
        print("\n🍎 Resultado para \(quantidade)g de \(alimento.nome):\n")
        
        print("🧈 Vitaminas Lipossolúveis:")
        print(String(format: "A: %.2f µg | D: %.2f µg | E: %.2f mg | K: %.2f µg", totalA, totalD, totalE, totalK))
        
        print("\n💧 Vitaminas Hidrossolúveis:")
        print(String(format:
            "C: %.2f mg | B1: %.2f mg | B2: %.2f mg | B3: %.2f mg | B5: %.2f mg | B6: %.2f mg | B7: %.2f µg | B9: %.2f µg | B12: %.2f µg",
            totalC, totalB1, totalB2, totalB3, totalB5, totalB6, totalB7, totalB9, totalB12))
    }
}
