//
//  CPF.swift
//  ValidacaoCpfCNPJ
//
//  Created by Leonardo Oliveira Portes on 19/05/21.
//

import Foundation

class Cpf: Identificador {
    
    init(numeros: String) {
        super.init(numeros: numeros, calculoDocumento: CalculoCPF())
    }
    
}
