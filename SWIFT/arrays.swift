//Coleção fixa com tamanho fixo; 
let userNames: [String] = ["Thiago", "Mikis", "Oliveira", "Santos"]
userNames

let usersFirstNames : [String] = []
usersFirstNames

let usersLastName : [String] = []
userslastNames

let usersAge : [String] = []
usersAge

let usersGender : [String] = []
usersGender

let usersEmail : [String] = []
usersEmail

let usersPassword : [String] = []
usersPassword

let usersPhone : [String] = []
usersPhone

let usersAddress : [String] = []
usersAddress

let usersCity : [String] = []
usersCity

let usersState : [String] = []
usersState

let usersCountry : [String] = []
usersCountry


//Alteração de Estado de variáveis;
var userNames: [String] = []
userNames.append("Thiago")

userNames += ["Mikis", "Oliveira", "Santos"]

//Adicionando elementos;
userNames.append("Thiago")

//Inserindo elementos no indice especifico;
userNames.insert("Thiago", at: 0)

//trocar por Slices;
userNames[0...1] = ["João", "Maria", "José"]
userNames

//Modificadores de Arrays;
//Slices;
let name = userNames[0]
let firstThree = userNames[0...2]
firsthTree[]
let lastThree = userNames[2...3]
lastThree[]
let firstTwo = userNames[0...1]
firstTwo[]

let firstThree = Array(userNames[0...2])
firsthTree[]


//Exclusão de elementos;
userNames.remove(at: 0) // remove elementos do indice 0
userNames

userNames.removeLast()
userNames

userNames.removeAll() //remove todos os elementos
userNames

let removed = userNames.remove(at: 0)
userNames

let removedLast = userNames.removeLast(at: 0)
userNames

//Iteração em Arrays;

for name in userNames {
    print(name)
}

for (index, name) in userNames.enumerated() {
    print(index, name)
}

//Arrays de Dicionários

let users = [
    "Thiago": 28,
    "Mikis": 27,
    "Oliveira": 1
]

users["Thiago"]
users["Mikis"]
users["Oliveira"]
users["Santos"]

for (name, age) in users {
    print(name, age)
}

for (name, _) in users {
    print(name)
}

for (_, age) in users {
    print(age)
}

for user in users {
    print(user)
}

//Funções de condições Arrays;
userNames.isEmpty // Verifica o lista vazia
userNames.count // Verifica o tamanho da lista   
userNames.contains("Thiago") // verifica a existência de elementos na lista
if let first = userNames.first {
    print(first) } // Retorna o primeiro elemento da lista
userNames.last // Retorna o último elemento da lista

//Trocar por indice;
userNames.swapAt(0, 1)