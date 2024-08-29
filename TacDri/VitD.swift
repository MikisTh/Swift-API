import Foundation

enum HealthCondition {
    case normal
    case deficiency
}

func calculateVitaminDDose(age: Int, condition: HealthCondition) -> Int {
    var dose: Int
    
    switch condition {
    case .normal:
        if age < 70 {
            dose = 600 // UI (Unidades Internacionais)
        } else {
            dose = 800 // UI
        }
    case .deficiency:
        dose = 1000 // UI, exemplo para deficiência
    }
    
    return dose
}

// Exemplo de uso
let age = 65
let condition = HealthCondition.normal
let dailyDose = calculateVitaminDDose(age: age, condition: condition)
print("A dose diária recomendada de vitamina D é \(dailyDose) UI.")
