//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Haruko Okada on 9/3/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var password: Int = 1234

    @IBOutlet weak var resultLabel1: UILabel!
    
    @IBOutlet weak var resultLabel2: UILabel!
    
    @IBOutlet weak var resultLabel3: UILabel!
    
    @IBOutlet weak var resultLabel4: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func startBtn(_ sender: Any) { //chotto original attempt
       
        var test: Int = 0;
        
        while (test <= password){
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))

           // print(1030 % 1000)
            
            resultLabel4.text = String(test % 10)
            resultLabel3.text = String(test/10 % 10)
            resultLabel2.text = String(test/100 % 10)
            resultLabel1.text = String(test/1000 % 10)
            
            test = test + 1
            
        }
    
     
        // 教科書の範囲
          /*for i in 0...9999{
        
            countLabel.text = String(i)
            
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if (i == password){
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[3])
                resultLabel2.text = String(digits[2])
                resultLabel3.text = String(digits[1])
                resultLabel4.text = String(digits[0])

            }
            
        }*/
        
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        
        password = 1234
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func randomPass(_ sender: Any) {
        password = Int.random(in: 1000 ... 9999)
    }

}

