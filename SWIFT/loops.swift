//Loops são declarações que permitem a execução de um bloco de código de forma contínua enquanto uma condição é satisfeita. 

//range - Especifica o intervalo de valores a serem percorridos;
//where - Adiciona uma condição para determinar se um bloco de código deve ser executado durante cada iteração;
//% (mod) - É usado para calcular o resto da divisão entre dois números;
//continue - Interrompe a iteração atual e passa para a próxima;
//break - Encerra completamente o loop;
//for - É uma estrutura de controle que permite a execução repetida de um bloco de código;
//for-in - É uma declaração usada para executar um bloco de código para cada item de um intervalo, coleção ou sequência;
//while - Executa um bloco de código enquanto uma condição é satisfeita, é usado quando queremos executar um loop zero ou mais vezes.
//repeat-while - É usado quando queremos executar um loop 1 ou mais vezes.

//For-in
for index in 1...5 {
    
}

for index in 1..<5 {
    
}

for variable in collection/range {
    block of code
}


//Array

let array = ["A", "B", "C"]
for element in array {
    
}

var countries = ["USA", "UK", "IN"]

for item in countries {
    print(item)
}

var dict = ["USA": "United States", "UK": "United Kingdom", "IN": "India"]

for (abbr, name) in dict {
    print("\(abbr) -- \(name)")
}

//Range

for number in stride(from: 0, to: 10, by: 2) {
    
}

//Where
for value in 1...10 where value % 2 == 0 {
    
}

//% (mod)

for i in 1...10 {
    if i % 2 == 0 {
        
    }
}

//Continue
for i in 1...10 {
    if i == 5 {
        continue
    }
    
}

//Break
for i in 1...10 {
    if i == 5 {
        break
    }
    
}

//While

while condition {
    block of code
}

var ran = 0
while ran < 10 {
    print(ran)
    ran = Int.random(in: 1..<20)
}

//Repeat-While

repeat {
    block of code
} while condition

var ran: Int

repeat {
    ran = Int.random(in: 1..<20)
    print(ran)
} while ran < 4