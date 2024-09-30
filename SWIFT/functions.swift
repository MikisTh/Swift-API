// Para usar uma função, você “chama” essa função com seu nome e passa a ela valores de entrada (argumentos) sendo eles os parâmetros da função.

func functionName(ParameterName: type) ->returnType{
// Body of the function
}
func addFruits( string Fruit ) {
    print("nameFruit")
    return (fruit)
}
addFruits()

func addVegetables( string Vegetable ) {
    print("nameVegetable")
    return (vegetable)
}
addVegetables()


func makeArray(size: Int, using generator: () -> Int) -> [Int] {}

func emojis(de frutas: [Fruta]) -> [String] {
    return frutas.map { $0.emoji }
}

func filtra(por cor: Cor) -> ([Fruta]) -> [Fruta] {
    return { frutas in
        frutas.filter { $0.cor == cor }
    }
}

func pesoSaladaDeFrutas(com frutas: [Fruta]) -> Double {
    return frutas.reduce(0) { (total, fruta) in
        total + fruta.peso
    }
}
