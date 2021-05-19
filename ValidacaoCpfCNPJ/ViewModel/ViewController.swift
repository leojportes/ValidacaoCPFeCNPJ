//
//  ViewController.swift
//  ValidacaoCpfCNPJ
//
//  Created by Leonardo Oliveira Portes on 18/05/21.
//

import UIKit

 class ViewController: UIViewController {
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    //MARK: Outlets
    
    @IBOutlet weak var cpfTextField: UITextField!
    
    @IBOutlet weak var cnpjTextField: UITextField!
    
    @IBOutlet weak var resultadoCpf: UILabel!
    
    @IBOutlet weak var resultadoCnpj: UILabel!
    
    
    //MARK: Actions
    
    @IBAction public func btValidaDados(_ sender: Any) {
        getDadosCPF()
    }
    
    @IBAction func btValidaCNPJ(_ sender: Any) {
       getDadosCNPJ()
    }
    
    
    //MARK: Functions
    
    func getDadosCNPJ(){
        guard let cnpjtext = cnpjTextField.text else {return}
        let cnpj: CNPJ = CNPJ(numeros: cnpjtext)
        resultadoCnpj.text = cnpj.resultado()
    }
    
    func getDadosCPF(){
        guard let cpftext = cpfTextField.text else {return}
        let cpf: Cpf = Cpf(numeros: cpftext)
        resultadoCpf.text = cpf.resultado()
    }
    
 }
