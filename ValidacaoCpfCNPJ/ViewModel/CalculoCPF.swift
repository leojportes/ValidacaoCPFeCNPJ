//
//  CalculoCPF.swift
//  ValidacaoCpfCNPJ
//
//  Created by Leonardo Oliveira Portes on 19/05/21.
//

import Foundation
//
class CalculoCPF: CalculosDocumento{
        func calculo(numero: String) -> String {
            
            let mult1 = [10,9,8,7,6,5,4,3,2] //Penultimo digito
            let mult2 = [11,10,9,8,7,6,5,4,3,2] //Último digito
            var soma: Int = 0
            var resto: Int


            let posicao = numero
            let cpf = posicao.map { Int(String($0))! } //Converte em Int

            if cpf.count != 11 {
                return "CPF Invalido"
            
            }else{
            
                if cpf[0] == cpf[1] && cpf[1] == cpf[2] && cpf[2] == cpf[3] && cpf[3] == cpf[4] && cpf[4] == cpf[5] && cpf[5] == cpf[6] && cpf[6] == cpf[7] && cpf[7] == cpf[8] && cpf[8] == cpf[9] && cpf[9] == cpf[10] {
                return "CPF Inválido - Dígitos iguais."

                }else{
                //Penultimo número
                for i in 0..<9{
                    soma+=(cpf[i] * mult1[i])
                }
                resto = (soma * 10) % 11
                    if resto == 10{
                    resto = 0
                }
                if resto != cpf[9]{
                    return "CPF Inválido!"
                } else {
                    soma = 0

                //Último número
                    for i in 0..<10{
                        soma+=(cpf[i] * mult2[i])
                    }
                    resto = (soma * 10) % 11
                    if resto == 10{
                        resto = 0
                    }
                    if resto != cpf[10]{
                        return "CPF Inválido!"
                    }else{
                        return "CPF Válido"
                    }
                }
            }
        }
    }
}
    

    
//    func validaCpf(){
//
//
    
   
//}
