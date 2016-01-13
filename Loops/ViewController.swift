//
//  ViewController.swift
//  Loops
//
//  Created by Rayne on 11/18/15.
//  Copyright (c) 2015 Kappa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    @IBOutlet var resultLabel5: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password = Int(arc4random_uniform(100000))


    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"

        countLabel.text = "0"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(){
        for i in 0 ..< 100000 {
            countLabel.text = String(i)
            
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.000000000000000000000000000000000000000000000000001))
            
            if i == password {
                var digits = [Int]()
                
                for j in 0 ..< 5 {
                    digits.append(password % 10)
                    
                    password /= 10
                }
            
            resultLabel1.text = String(digits[0])
            resultLabel2.text = String(digits[1])
            resultLabel3.text = String(digits[2])
            resultLabel4.text = String(digits[3])
            resultLabel4.text = String(digits[4])
  
            }
        }
    }
    

}

