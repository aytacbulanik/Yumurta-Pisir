//
//  ViewController.swift
//  Yumurta Pisir
//
//  Created by Aytaç Bulanık on 8.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func eggButtonSlected(_ sender: UIButton) {
        print(sender.titleLabel?.text)
    }
    
}

