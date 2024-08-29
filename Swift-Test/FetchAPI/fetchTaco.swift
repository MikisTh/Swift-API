import SwiftUI

struct ContentView: View {
    @State private var taco: [taco] = []

    var body: some View {
        List(data, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(taco.title)
                Text(taco.body)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .onAppear {
            fetchData()
        }
    }

    func taco() {
        guard let url = URL(string: "https://www.tbca.net.br/base-dados/busca_componente.php") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let taco = taco else { return }
            do {
                let taco = try JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    self.taco = taco
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

struct Taco: Codable {
    let results: [Taco]
}

struct Componente: Codable {
    let energia: String
    let umidade: String
    let carboidratoTotal: String
    let carboidratoDisponivel: String
    let proteina: String
    let lipidios: String
    let fibraAlimentar: String
    let alcool: String
    let cinzas: String
    let colesterol: String
    let acidosGraxosSat: String
    let acidosGraxosMono: String
    let acidosGraxosPoli: String
    let acidosGraxosTrans: String
    let calcio: String
    let ferro: String
    let sodio: String
    let magnesio: String
    let fosforo: String
    let potassio: String
    let zinco: String
    let cobre: String
    let selenio: String
    let vitaminaAra: String
    let vitaminaArae: String
    let vitaminaD: String
    let vitaminaE: String
    let tiamina: String
    let riboflavina: String
    let niacina: String
    let vitaminaB6: String
    let vitaminaB12: String
    let vitaminaC: String
    let folato: String
    let sal: String
    let acucar: String
  
struct GrupoAlimento: Codable {
    let acucaresDoces: String
    let alimentosIndustrializados: String
    let alimentosEspeciais: String
    let bebidas: String
    let carnes: String
    let cereais: String
    let fastFood: String
    let frutas: String
    let gordurasOleos: String
    let leguminosas: String
    let leite: String
    let miscelaneas: String
    let nozesSementes: String
    let ovos: String
    let pescados: String
    let vegetais: String   

  
struct TipoAlimento: Codable {
    let inNatura: String
    let ingredienteProcessado: String
    let processadoSemLactose: String
    let processadoParaConsumo: String
    let preparacao: String
    let preparacaoAlteracaoTextura: String
    let preparacaoDieteticoVeganoVegatarianoSemLactose: String
    let preparacaoSemGluten: String
    let preparacaoSemGlutenSemLactose: String
    let preparacaoVeganoVegatariano: String
    let preparacaoVeganoVegatarianoSemLactose: String
    let preparacaoVeganoVegatarianoSemLactoseSemGluten: String
    let preparoSimplesAlimento: String
    
    
    
    
}
