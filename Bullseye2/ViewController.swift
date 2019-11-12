//
//  ViewController.swift
//  Bullseye2
//
//  Created by Yaz Burrell on 11/12/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Henlo fren!")
        print("swift")
    }
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Bullseye App!", message: "This is my second Bullseye App!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cool", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }


}

