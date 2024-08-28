override func viewDidLoad() {
  super.viewDidLoad()
  view.backgroundColor = .white
  viewModel.delegate = self

  loginLabel.text = "Usuário"
  loginLabel.textAlignment = .center
  loginLabel.backgroundColor =  colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
  loginLabel.textColor =  colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
  loginLabel.layer.cornerRadius = 10
  loginLabel.layer.masksToBounds = true
  
  //por ser uma label, para mudar sua forma é preciso colocar essa linha de código para aparecer na tela do jeito que eu quero
  passwordLabel.text = "Senha"
  passwordLabel.textAlignment = .center
  passwordLabel.backgroundColor =  colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
  passwordLabel.textColor =  colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
  passwordLabel.layer.cornerRadius = 10
  passwordLabel.layer.masksToBounds = true
  
  loginTextField.backgroundColor =  colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0.25)
  loginTextField.textColor =  colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
  loginTextField.placeholder = "Digite o usuário..."
  loginTextField.textAlignment = .center
  loginTextField.autocapitalizationType = .none
  loginTextField.layer.cornerRadius = 10


  passwordTextField.backgroundColor =  colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 0.25)
  passwordTextField.textColor =  colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
  passwordTextField.placeholder = "Digite a senha..."
  passwordTextField.textAlignment = .center
  passwordTextField.autocapitalizationType = .none
  passwordTextField.layer.cornerRadius = 10


  loginButton.setTitle("Acessar", for: .normal)
  loginButton.backgroundColor = .red
  loginButton.addTarget(self, action: #selector(login), for: .touchDown)


  view.addSubview(loginLabel)
  view.addSubview(loginTextField)
  view.addSubview(passwordLabel)
  view.addSubview(passwordTextField)
  view.addSubview(loginButton)
  
}
