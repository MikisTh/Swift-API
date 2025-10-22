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
