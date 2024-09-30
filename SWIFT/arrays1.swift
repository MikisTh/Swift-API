struct Fruits {
    let name: String
    let emoji: String
    let color: Cor
    let weigth: Double
}
struct Vegetables {
    let name: String
    let emoji: String
    let color: Color
    let weigth: Double
}

let fruits: [String] = ["Uva", "Maça", "Banana", "Mamão", "Laranja", "Morango", "Melancia", "Melão", "Abacaxi", "Abacate", "Jabuticaba", "Caju", "Cereja", "Kiwi", "Goiaba", "Cajá", "Acerola", "Maracujá", "Manga", "Pera"]

fruits.append(6)
fruits.sort()
fruits.sort(by: >)
fruits.shuffle()
let shuffledFruits = fruits.shuffled()


print("Tamanho do array: \(fruits.count)")


for fruit in fruits {
    print("Fruit: \(fruit)")
}

fruits.forEach { fruit in
    print(fruit)
}

fruits.swapAt(1, 2)

sort()	classifica elementos de matriz
shuffle()	altera a ordem dos elementos de matriz
forEach()	chama uma função para cada elemento
contains()	Procura o elemento em uma matriz
swapAt()	troca a posição dos elementos da matriz
reverse()	inverte a ordem dos elementos de matriz

