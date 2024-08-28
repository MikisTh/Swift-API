
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
    }

    @IBOutlet weak var peso : UITextField!
    @IBOutlet weak var altura : UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var result: UILabel!
    

    @IBAction func calcular(_ sender: AnyObject) {
        var IMC: Double
        let peso1: Double!
        
        peso1  = Double(self .peso.text!)!
        
        let estatura1 = Double(self .altura.text!)!
        
        IMC = peso1 / pow(estatura1, 2)
        
        print("Resultado: \(IMC)")

        
        switch IMC{
                case ..<16:
                print("Desnutricão severa")
                result.text = "Resultado: Desnutricão Severa"
                imageView.image = UIImage(named: "flaco")
                    
            case 16.1...18.4:
                print("Desnutricão Moderada")
                result.text = "Resultado: Desnutricão Moderada"
                imageView.image = UIImage(named: "flaco")

            case 18.5...22:
                print("Baixo Peso ")
                result.text = "Resultado: Baixo Peso"
                imageView.image = UIImage(named: "flaco")
                
            case 22.1...24.9:
                print("Peso Normal")
                result.text = "Resultado: Peso Normal"
                imageView.image = UIImage(named: "Pesoideal")
                
            case 25...29.9:
                print("Sobrepeso")
                result.text = "Resultado: Sobrepeso"
                imageView.image = UIImage(named: "Gordo")

                
            case 30...34.9:
                print("Obesidade tipo 1")
                result.text = "Resultado: Obesidade tipo 1"
                imageView.image = UIImage(named: "Gordo")

            
            case 35...39.9:
                print("Obesidade tipo 2")
                result.text = "Resultado: Obesidade tipo 2"
                imageView.image = UIImage(named: "Gordo")

            
            case 40...Double.infinity:
                print("Obesidade tipo 3")
                result.text = "Resultado: Obesidade tipo 3"
                imageView.image = UIImage(named: "Gordo")

                
            default:
                print("Obesidade morbida")
        }
        
    }
    
}
