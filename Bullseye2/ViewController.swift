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
    var targetValue = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var zeroLabel: UILabel!
    @IBOutlet weak var oneHundredLabel: UILabel!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var totalScoreValueLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var totalRoundValue: UILabel!
    @IBOutlet weak var slider: UISlider!
   
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
    
    
    @IBAction func showAlert(){
        var difference: Int
        if currentValue > targetValue {
            difference = currentValue - targetValue
        } else if targetValue > currentValue {
            difference = targetValue - currentValue
        } else {
            difference = 0
        }
        
        
        let message = "The current value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        startNewRound()
        
    }

    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        print(currentValue)
    }
    
    
    @IBAction func startOverButtonPressed(_ button: UIButton) {
    }
    
    
    @IBAction func infoButtonPressed(_ button: UIButton) {
    }
    
}

