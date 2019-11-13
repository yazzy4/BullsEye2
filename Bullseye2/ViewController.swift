//
//  ViewController.swift
//  Bullseye2
//
//  Created by Yaz Burrell on 11/12/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Henlo fren!")
        print("swift")
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var zeroLabel: UILabel!
    @IBOutlet weak var oneHundredLabel: UILabel!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var totalScoreValueLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var totalRoundValue: UILabel!
    
    @IBAction func showAlert(){
        let message = "The current value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Bullseye App!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }

    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print(currentValue)
    }
    
    
    @IBAction func startOverButton(_ button: Any) {
    }
    
    
    @IBAction func infoButton(_ button: Any) {
    }
    
}

