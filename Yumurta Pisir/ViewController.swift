//
//  ViewController.swift
//  Yumurta Pisir
//
//  Created by Aytaç Bulanık on 8.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    let eggTime = ["Soft" : 5, "Medium" : 12, "Hard" : 20]
    var timer = Timer()
    var currentTime = 0
    var nextTime = 0
    var totalTime = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func eggButtonSlected(_ sender: UIButton) {
        progressView.progress = 0
        let buttonName = sender.titleLabel!.text!
            cookEgg(buttonName)
    }
    func cookEgg(_ name : String) {
        guard let eggTimeInt = eggTime[name] else {return}
        timer.invalidate()
        totalTime = eggTimeInt
        currentTime = eggTimeInt
        nextTime = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        resultLabel.text = "Kalan süre : \(currentTime)"
        progressView.progress = 0
        progressView.progress = Float(nextTime) / Float(totalTime)
        currentTime -= 1
        nextTime += 1
        if currentTime < 0 {
            resultLabel.text = "DONE !"
            timer.invalidate()
        }
    }
}

