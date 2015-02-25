//
//  ViewController.swift
//  IsItPrime
//
//  Created by Rommel Rico on 2/24/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func isItPrimeButton(sender: AnyObject) {
        var isPrime = true
        var number = myTextField.text.toInt()
        
        if number != nil {
            if number == 1 {
                isPrime = false
            } else if number != 2 {
                for var i=2; i<number; i++ {
                    if number!%i == 0 {
                        isPrime = false
                        break
                    }
                }
            }
            if isPrime {
                resultsLabel.text = "YES"
            } else {
                resultsLabel.text = "NO"
            }
        } else {
            resultsLabel.text = "Please enter a number."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

