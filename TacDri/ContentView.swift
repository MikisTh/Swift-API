import SwiftUI

struct ContentView: View {
    @State private var nome = ""
    @State private var idade = ""
    @State private var sexo = "feminino"
    @State private var peso = ""
    @State private var altura = ""
    @State private var cintura = ""
    @State private var quadril = ""
    @State private var tricipital = ""
    @State private var peitoral = ""
    @State private var subescapular = ""

    var avaliacao: AvaliacaoAntropometrica? {
        guard let idadeInt = Int(idade),
              let pesoDouble = Double(peso),
              let alturaDouble = Double(altura),
              let cinturaDouble = Double(cintura),
              let quadrilDouble = Double(quadril),
              let tricipitalDouble = Double(tricipital),
              let peitoralDouble = Double(peitoral),
              let subescapularDouble = Double(subescapular)
        else { return nil }

        return AvaliacaoAntropometrica(
            nome: nome,
            idade: idadeInt,
            sexo: sexo,
            peso: pesoDouble,
            altura: alturaDouble,
            cintura: cinturaDouble,
            quadril: quadrilDouble,
            tricipital: tricipitalDouble,
            peitoral: peitoralDouble,
            subescapular: subescapularDouble
        )
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Dados Pessoais")) {
                    TextField("Nome", text: $nome)
                    TextField("Idade", text: $idade)
                        .keyboardType(.numberPad)
                    Picker("Sexo", selection: $sexo) {
                        Text("Feminino").tag("feminino")
                        Text("Masculino").tag("masculino")
                    }.pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Medidas Corporais")) {
                    TextField("Peso (kg)", text: $peso)
                        .keyboardType(.decimalPad)
                    TextField("Altura (m)", text: $altura)
                        .keyboardType(.decimalPad)
                    TextField("Cintura (cm)", text: $cintura)
                        .keyboardType(.decimalPad)
                    TextField("Quadril (cm)", text: $quadril)
                        .keyboardType(.decimalPad)
                }

                Section(header: Text("Dobras Cutâneas (mm)")) {
                    TextField("Tricipital", text: $tricipital)
                        .keyboardType(.decimalPad)
                    TextField("Peitoral", text: $peitoral)
                        .keyboardType(.decimalPad)
                    TextField("Subescapular", text: $subescapular)
                        .keyboardType(.decimalPad)
                }

                if let avaliacao = avaliacao {
                    Section(header: Text("Resultados")) {
                        Text(String(format: "IMC: %.2f (%@)", avaliacao.imc, avaliacao.classificacaoIMC))
                        Text(String(format: "ICQ: %.2f (%@)", avaliacao.icq, avaliacao.riscoCardiovascular))
                        Text(String(format: "Gordura Corporal: %.2f%%", avaliacao.percentualGordura))
                    }
                }
            }
            .navigationTitle("Avaliação Antropométrica")
        }
    }
}
