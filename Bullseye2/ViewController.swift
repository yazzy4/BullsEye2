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
    var score = 0
    var round = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var zeroLabel: UILabel!
    @IBOutlet weak var oneHundredLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
   
    func startNewRound(){
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    
    @IBAction func showAlert(){
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        score += points
        
        let title: String
        if difference == 0  {
            title = "Perfect"
        } else if difference < 5 {
            title = "Almost had it"
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close"
        }
        
        
   
        let message = "You scored \(points) points"
//            "The current value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe difference is: \(difference)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
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

