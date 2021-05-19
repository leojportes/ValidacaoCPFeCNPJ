//
//  CalculoCnpj1.swift
//  ValidacaoCpfCNPJ
//
//  Created by Leonardo Oliveira Portes on 19/05/21.
//

import Foundation

class CalculoCnpj: CalculosDocumento {
    
        func calculo(numero: String) -> String {
        let mult1 = [5,4,3,2,9,8,7,6,5,4,3,2] //Penultimo digito
        let mult2 = [6,5,4,3,2,9,8,7,6,5,4,3,2] //Último digito
        var soma: Int = 0
        var resto: Int
            
        let posicao = numero
            let cnpj = posicao.map { Int(String($0))! }
            if cnpj.count != 14{
                return "CNPJ Inválido"
            
        }else{

        if cnpj[0] == cnpj[1] && cnpj[1] == cnpj[2] && cnpj[2] == cnpj[3] && cnpj[3] == cnpj[4] && cnpj[4] == cnpj[5] && cnpj[5] == cnpj[6] && cnpj[6] == cnpj[7] && cnpj[7] == cnpj[8] && cnpj[8] == cnpj[9] && cnpj[9] == cnpj[10] && cnpj[10] == cnpj[11] && cnpj[11] == cnpj[12] && cnpj[12] == cnpj[13]{
            return "CNPJ Inválido! - Dígitos iguais."
            }else{
                //Penultimo número
                for i in 0..<12{
                soma+=(cnpj[i] * mult1[i])

                }
                resto = (soma * 12) % 11
                if resto < 2{
                resto = 0
                }
                resto = 11 - resto
                if resto != cnpj[12]{
                    return "CNPJ Inválido!"
                } else {
                soma = 0

                    //Último número
                    for i in 0..<13{
                    soma += (cnpj[i] * mult2[i])
                    }
                    resto = (soma * 12) % 11
                    if resto < 2 {
                        resto = 0

                    }
                    resto = 11 - resto
                    if resto != cnpj[13]{
                        return "CNPJ Inválido!"
                    }else{
                        return "CNPJ Válido!"

                    }
                }
            }
        }
    }
}
