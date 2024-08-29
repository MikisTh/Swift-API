import Foundation

func calcularBalancoNitrogenado(proteinaTotalDieta: Double, ureiaUrinaria24h: Double, volumeUrinario24h: Double, perdasNaoMensuraveis: Double) -> Double {
    let nitrogenioIngerido = proteinaTotalDieta / 6.25
    let nitrogenioExcretado = (ureiaUrinaria24h * volumeUrinario24h * 0.47) + perdasNaoMensuraveis
    let balancoNitrogenado = nitrogenioIngerido - nitrogenioExcretado
    return balancoNitrogenado
}

// Exemplo de uso
let proteinaTotalDieta = 100.0 // em gramas
let ureiaUrinaria24h = 20.0 // em gramas
let volumeUrinario24h = 1.5 // em litros
let perdasNaoMensuraveis = 3.0 // em gramas

let balancoNitrogenado = calcularBalancoNitrogenado(proteinaTotalDieta: proteinaTotalDieta, ureiaUrinaria24h: ureiaUrinaria24h, volumeUrinario24h: volumeUrinario24h, perdasNaoMensuraveis: perdasNaoMensuraveis)

print("O balanço nitrogenado é \(balancoNitrogenado) gramas")
