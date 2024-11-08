//
//  PerguntasViewController.swift
//  DM126
//
//  Created by user270465 on 10/26/24.
//

import UIKit

class PerguntasViewController: UIViewController {
    var pontuacao = 0
    var perguntaAtual = 0
    
    @IBOutlet weak var outletImage: UIImageView!
    
    @IBAction func clickResponse(_ sender: UIButton) {
        if sender.currentTitle == responses[perguntaAtual].response {pontuacao += 1}
        
        if perguntaAtual < responses.count - 1 {
            perguntaAtual += 1
            configurarPergunta()
        }
        else {
            navegaParaTelaDesempenho()
        }
        print(pontuacao)
    }
    
    @IBOutlet var buttonResponse: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarPergunta()
        // Do any additional setup after loading the view.
    }
    
    func selectImage(){
        outletImage.image = UIImage(named: "Mago Negro")
    }
    
    func configurarPergunta(){
        outletImage.image = UIImage(named: responses[perguntaAtual].response)
        for botao in buttonResponse{
            let tituloBotao = responses[perguntaAtual].choices[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadoVC = segue.destination as? ResultadoViewController
        else {return}
        resultadoVC.pontuacao = pontuacao
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
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
