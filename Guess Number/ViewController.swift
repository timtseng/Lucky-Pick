//
//  ViewController.swift
//  Guess Number
//
//  Created by Tim Tseng on 8/4/17.
//  Copyright © 2017 Tim Tseng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countNumber:Int = 1
    var maxTry:Int = 5
    
    @IBOutlet weak var timesNumber: UILabel!
    @IBOutlet weak var pickedNumber: UITextField!
    @IBOutlet weak var answerWord: UILabel!
    @IBAction func submitNumber(_ sender: UIButton) {
     pickedNumber.resignFirstResponder() //
        
        
        
        let upperNumber:Int = 10
        let bottomNumber:Int = 1
        let luckyNumber:Int = Int(arc4random_uniform(100))+1
       
        if Int(pickedNumber.text!) == nil {
            answerWord.text = "Please Input Number"
            timesNumber.text = "\(maxTry+1-countNumber) chances left"        
        }
            
        else if Int(pickedNumber.text!)! > upperNumber  {
            answerWord.text = " Outside the Range"
             timesNumber.text = "\(maxTry+1-countNumber) chances left"
        }
        else if Int(pickedNumber.text!)! < bottomNumber {
             answerWord.text = "Outside the Range"
             timesNumber.text = "\(maxTry+1-countNumber) chances left"
        }
        else if Int(pickedNumber.text!) == luckyNumber {
            answerWord.text = "AWESOME"
            timesNumber.text = "Start Over Again"
            countNumber = 1
            }
            
        else {
            
            if countNumber < maxTry {
                answerWord.text = "Keep Trying"
                countNumber += 1
                timesNumber.text = "\(maxTry+1-countNumber) chances left"
            }
            else {
              timesNumber.text = "Start Over Again"
              countNumber = 1
            
            }
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

