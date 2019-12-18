//
//  AboutViewController.swift
//  Bullseye2
//
//  Created by Yaz Burrell on 12/17/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//
import WebKit
import UIKit

class AboutViewController: UIViewController {
    
        override func viewDidLoad() { super.viewDidLoad()
            
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
        webView.load(request) }
    }

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func close (){
         dismiss(animated: true, completion: nil)
        
    }
    


}
