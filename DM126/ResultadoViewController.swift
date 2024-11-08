//
//  ResultadoViewController.swift
//  DM126
//
//  Created by user270465 on 11/8/24.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var pontuacaoOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado()
        // Do any additional setup after loading the view.
    }
    
    func resultado(){
        guard let pontuacao = pontuacao
        else{return}
        pontuacaoOutlet.text = "Pontos: \(pontuacao)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
