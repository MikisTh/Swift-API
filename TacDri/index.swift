//Mensagem inicial 
let saudacao = "Olá"
let nome = "Usuário"
let mensagem = saudacao + ", " + nome + "!""Seja bem vindo!"
print(mensagem)

//Função de Cálculo imc
func imc(a: Int, b: Int) -> Int {
    return a / b * b
}

let resultado = imc (a: 5, b: 3)
print("O IMC é \(resultado)")
