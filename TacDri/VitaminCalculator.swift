import Foundation

/// Estrutura que agrupa funções de cálculo das vitaminas lipossolúveis e hidrossolúveis.
struct VitaminCalculator {
    
    // MARK: - 🧈 VITAMINAS LIPOSSOLÚVEIS
    // São armazenadas no tecido adiposo: A, D, E e K.
    
    /// Vitamina A (µg RAE)
    /// Fórmula: retinol + β-caroteno/12 + α-caroteno/24 + β-criptoxantina/24
    static func vitaminaA(retinol: Double = 0.0,
                          betaCaroteno: Double = 0.0,
                          alfaCaroteno: Double = 0.0,
                          betaCriptoxantina: Double = 0.0) -> Double {
        let total = retinol +
                    (betaCaroteno / 12.0) +
                    (alfaCaroteno / 24.0) +
                    (betaCriptoxantina / 24.0)
        return total
    }
    
    /// Vitamina D (µg)
    /// Soma do teor de vitamina D de cada alimento consumido
    static func vitaminaD(alimentos: [String: Double],
                          consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina E (mg α-TE)
    /// Soma do teor de vitamina E de cada alimento
    static func vitaminaE(alimentos: [String: Double],
                          consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina K (µg)
    static func vitaminaK(alimentos: [String: Double],
                          consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    
    // MARK: - 💧 VITAMINAS HIDROSSOLÚVEIS
    // Solúveis em água e não armazenadas no corpo: C e complexo B.
    
    /// Vitamina C (mg)
    static func vitaminaC(alimentos: [String: Double],
                          consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B1 (Tiamina, mg)
    static func vitaminaB1(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B2 (Riboflavina, mg)
    static func vitaminaB2(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B3 (Niacina, mg)
    static func vitaminaB3(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B5 (Ácido pantotênico, mg)
    static func vitaminaB5(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B6 (Piridoxina, mg)
    static func vitaminaB6(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B7 (Biotina, µg)
    static func vitaminaB7(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B9 (Ácido fólico, µg)
    static func vitaminaB9(alimentos: [String: Double],
                           consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
    
    /// Vitamina B12 (Cobalamina, µg)
    static func vitaminaB12(alimentos: [String: Double],
                            consumo: [String: Double]) -> Double {
        var total = 0.0
        for (alimento, teor) in alimentos {
            if let qtd = consumo[alimento] {
                total += teor * (qtd / 100.0)
            }
        }
        return total
    }
}
