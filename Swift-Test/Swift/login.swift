//
// ViewController.swift
// TestLogin

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!

    @IBOutlet weak var PassowrdTextField: UITextField

    @IBOutlet weak var TLabel: UILabel!
    
    @IBAction func button(_ sender: Any) {


    }
func isLoginValid ( login : String) - > Bool{
    if Login.count >= 3 {
        return true
    } else {
        return false
    }
}

func isPasswordValid ( password : String) -> Bool
{
    if password.count >= 4 {
        return true
    } else {
        return false
}
}

    override func viewDidLoad() {
        TLabel.isHidden = true
        super.viewDidLoad()
}

func check (login: String?, password: String?) -> (Bool, String) {
    if let login = login, isLoginValid(login: login){
        if let password = password, isPasswordValid(password: password) {
            TLabel.text="mikis"
            TLabel.isHidden = false
            return (true, "")
        } else {
            TLabel.text = "Preencha Corretamente a senha"
            TLabel.isHidden = false
                return (false, "Senha inválida")
        }
    } else {
        TLabel.text = "Preencha Corretamente o login"
        TLabel.isHidden = false
        return (false, "Login inválido")
    }
}

@IBAction func button(_ sender: Any) {
    check(login: NameTextField.text, password: PasswordTexField.text)
}