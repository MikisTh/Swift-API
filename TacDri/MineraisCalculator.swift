import Foundation

// Estrutura de dados de um alimento com minerais (por 100g)
struct AlimentoMineral {
    let nome: String
    
    // Valores baseados na TACO (µg ou mg por 100g)
    let calcio: Double       // mg
    let ferro: Double        // mg
    let zinco: Double        // mg
    let magnesio: Double     // mg
    let fosforo: Double      // mg
    let sodio: Double        // mg
    let potassio: Double     // mg
    let cobre: Double        // mg
    let manganes: Double     // mg
    let selenio: Double      // µg
}

class CalculadoraMinerais {
    
    // MARK: - Banco de dados TACO (resumo com alimentos reais)
    let alimentos: [AlimentoMineral] = [
        AlimentoMineral(nome: "Leite integral", calcio: 123, ferro: 0.1, zinco: 0.4, magnesio: 11,
                        fosforo: 93, sodio: 50, potassio: 150, cobre: 0.01, manganes: 0.01, selenio: 3.0),
        
        AlimentoMineral(nome: "Ovo cozido", calcio: 56, ferro: 1.75, zinco: 1.1, magnesio: 10,
                        fosforo: 171, sodio: 138, potassio: 126, cobre: 0.06, manganes: 0.03, selenio: 27.0),
        
        AlimentoMineral(nome: "Arroz cozido", calcio: 4, ferro: 0.2, zinco: 0.6, magnesio: 7,
                        fosforo: 18, sodio: 1, potassio: 9, cobre: 0.04, manganes: 0.13, selenio: 7.0),
        
        AlimentoMineral(nome: "Feijão carioca cozido", calcio: 27, ferro: 1.3, zinco: 0.5, magnesio: 35,
                        fosforo: 90, sodio: 2, potassio: 255, cobre: 0.17, manganes: 0.37, selenio: 4.0),
        
        AlimentoMineral(nome: "Banana prata", calcio: 6, ferro: 0.3, zinco: 0.2, magnesio: 29,
                        fosforo: 22, sodio: 1, potassio: 358, cobre: 0.08, manganes: 0.27, selenio: 1.0),
        
        AlimentoMineral(nome: "Salmão", calcio: 20, ferro: 0.4, zinco: 0.6, magnesio: 30,
                        fosforo: 200, sodio: 60, potassio: 340, cobre: 0.03, manganes: 0.01, selenio: 36.0)
    ]
    
    // MARK: - Função principal
    func calcularMinerais(alimentoNome: String, quantidade: Double) {
        guard let alimento = alimentos.first(where: { $0.nome.lowercased() == alimentoNome.lowercased() }) else {
            print("❌ Alimento não encontrado na base TACO.")
            return
        }
        
        let fator = quantidade / 100.0
        
        let totalCalcio = alimento.calcio * fator
        let totalFerro = alimento.ferro * fator
        let totalZinco = alimento.zinco * fator
        let totalMagnesio = alimento.magnesio * fator
        let totalFosforo = alimento.fosforo * fator
        let totalSodio = alimento.sodio * fator
        let totalPotassio = alimento.potassio * fator
        let totalCobre = alimento.cobre * fator
        let totalManganes = alimento.manganes * fator
        let totalSelenio = alimento.selenio * fator
        
        print("\n🥗 Minerais totais em \(quantidade)g de \(alimento.nome):\n")
        print(String(format:
        """
        🦴 Cálcio: %.2f mg
        🩸 Ferro: %.2f mg
        ⚙️ Zinco: %.2f mg
        💪 Magnésio: %.2f mg
        💎 Fósforo: %.2f mg
        🧂 Sódio: %.2f mg
        🍌 Potássio: %.2f mg
        🔩 Cobre: %.2f mg
        🌿 Manganês: %.2f mg
        🌞 Selênio: %.2f µg
        """, totalCalcio, totalFerro, totalZinco, totalMagnesio, totalFosforo,
            totalSodio, totalPotassio, totalCobre, totalManganes, totalSelenio))
    }
}
