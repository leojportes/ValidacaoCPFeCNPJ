//
//  Numero.swift
//  ValidacaoCpfCNPJ
//
//  Created by Leonardo Oliveira Portes on 18/05/21.
//
//
//import Foundation

 class Identificador{

    var numeros: String
    var calculoDocumento: CalculosDocumento
    
    init(numeros: String, calculoDocumento: CalculosDocumento) {
        self.numeros = numeros
        self.calculoDocumento = calculoDocumento
    }
    
    func resultado() -> String{
        return calculoDocumento.calculo(numero: numeros)
    }

}
