//
//  ViewController.swift
//  FirstApp
//
//  Created by 903-18i on 11.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
        //label.text = textField.text
        
        let a = textField.text!
        let b = textField2.text!
        
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA + numberB
            
            label.text = String(sum)
        } else {
            label.text = "Put a number"
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA - numberB
            
            label.text = String(sum)
        } else {
            label.text = "Put a number"
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA * numberB
            
            label.text = String(sum)
        } else {
            label.text = "Put a number"
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textField.text!
        let b = textField2.text!
        
//        if let numberA = Double(a), let numberB = Double(b){
//            let sum = numberA / numberB
//
//            label.text = String(sum)
//        } else {
//            label.text = "Put a number"
//        }
        
        guard let numberA = Double(a), let numberB = Double(b) else{
            label.text = "Put a number"
            return
        }
        
        let sum = numberA / numberB
        label.text = String(sum)
     }
}

