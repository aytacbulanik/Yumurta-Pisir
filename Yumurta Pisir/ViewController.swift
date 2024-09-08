//
//  ViewController.swift
//  Yumurta Pisir
//
//  Created by Aytaç Bulanık on 8.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    let eggTime = ["Soft" : 1 , "Medium" : 2 , "Hard" : 3]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func eggButtonSlected(_ sender: UIButton) {
        let buttonName = sender.titleLabel!.text!
            cookEgg(buttonName)
    }
    func cookEgg(_ name : String) {
        guard let eggTimeInt = eggTime[name] else {return}
        print(eggTimeInt)
    }
}

