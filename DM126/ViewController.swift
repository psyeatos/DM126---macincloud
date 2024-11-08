//
//  ViewController.swift
//  DM126
//
//  Created by user270465 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickButton(_ sender: Any) {
        print("Click button")
    }
    
    @IBOutlet weak var outletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configurarLayout()
    }

    func configurarLayout(){
        outletButton.layer.cornerRadius = 20.0
    }
}

