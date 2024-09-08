//
//  ViewController.swift
//  Yumurta Pisir
//
//  Created by Aytaç Bulanık on 8.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    let eggTime = ["Soft" : 5, "Medium" : 12, "Hard" : 20]
    var timer = Timer()
    var currentTime = 0
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
        timer.invalidate()
        currentTime = eggTimeInt
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        resultLabel.text = "Kalan süre : \(currentTime)"
        currentTime -= 1
        if currentTime == 0 {
            resultLabel.text = "DONE !"
            timer.invalidate()
        }
    }
}

