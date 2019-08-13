//
//  ViewController.swift
//  Bullseye
//
//  Created by Tony Pang on 13/08/2019.
//  Copyright © 2019 BIG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showAlert() {
        let message = "The vlue of the slider is now: \(currentValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

