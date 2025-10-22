struct AvaliacaoAntropometrica {
    var nome: String
    var idade: Int
    var sexo: String // "masculino" ou "feminino"
    var peso: Double // kg
    var altura: Double // metros
    var impedancia: Double // ohms

    var sexoValor: Double {
        return sexo == "masculino" ? 1.0 : 0.0
    }

    var alturaCm: Double {
        return altura * 100
    }

    var massaMagra: Double {
        let alturaQuadrado = alturaCm * alturaCm
        return ((alturaQuadrado / impedancia) * 0.401) + (sexoValor * 3.825) + (Double(idade) * -0.071) + 5.102
    }

    var massaGorda: Double {
        return peso - massaMagra
    }

    var percentualGorduraBio: Double {
        return (massaGorda / peso) * 100
    }

    func resumoBioimpedancia() {
        print("📊 Bioimpedância de \(nome):")
        print(String(format: "Massa magra: %.2f kg", massaMagra))
        print(String(format: "Massa gorda: %.2f kg", massaGorda))
        print(String(format: "Gordura corporal: %.2f%%", percentualGorduraBio))
    }
}


struct AvaliacaoAntropometrica: Identifiable, Codable {
    var id = UUID()
    var nome: String
    var idade: Int
    var sexo: String
    var peso: Double
    var altura: Double
    var cintura: Double
    var quadril: Double
    var tricipital: Double
    var peitoral: Double
    var subescapular: Double
    // ... cálculos como imc, icq, percentualGordura
}

struct HistoricoView: View {
    @FetchRequest(entity: Avaliacao.entity(), sortDescriptors: [])
    var avaliacoes: FetchedResults<Avaliacao>

    var body: some View {
        List(avaliacoes) { avaliacao in
            VStack(alignment: .leading) {
                Text(avaliacao.nome)
                Text("IMC: \(avaliacao.imc)")
                Text("ICQ: \(avaliacao.icq)")
            }
        }
        .navigationTitle("Histórico")
    }
}

import Charts

struct GraficoView: View {
    var dados: [Double]

    var body: some View {
        Chart {
            ForEach(dados.indices, id: \.self) { i in
                LineMark(
                    x: .value("Avaliação", i),
                    y: .value("IMC", dados[i])
                )
            }
        }
        .frame(height: 200)
        .padding()
    }
}

import PDFKit

func gerarPDF(avaliacao: AvaliacaoAntropometrica) -> Data? {
    let pdfMetaData = [
        kCGPDFContextCreator: "App Antropometria",
        kCGPDFContextAuthor: "Profissional de Saúde"
    ]
    let format = UIGraphicsPDFRendererFormat()
    format.documentInfo = pdfMetaData as [String: Any]

    let pageWidth = 595.2
    let pageHeight = 841.8
    let renderer = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight), format: format)

    let data = renderer.pdfData { context in
        context.beginPage()
        let text = "Relatório de Avaliação\nNome: \(avaliacao.nome)\nIMC: \(avaliacao.imc)\nICQ: \(avaliacao.icq)"
        text.draw(at: CGPoint(x: 50, y: 50), withAttributes: [.font: UIFont.systemFont(ofSize: 14)])
    }

    return data
}
