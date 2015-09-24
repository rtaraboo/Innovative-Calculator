//
//  SecondViewController.swift
//  Innovative Calculator
//
//  Created by Rosario Tarabocchia on 9/23/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var txtSubtractionFirstNumber: UITextField!
    @IBOutlet weak var txtSubtractionSecondNumber: UITextField!
    @IBOutlet weak var lblSubtractionLabel: UILabel!
    
    var subFirstNumber = ""
    var subSecondNumber = ""
    var subAnswer : Float = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    
    @IBAction func btnSubtractionCalculate(sender: UIButton) {
        if txtSubtractionFirstNumber.text! == "" || txtSubtractionSecondNumber.text! == "" {
            
            txtSubtractionFirstNumber.text = "0"
            txtSubtractionSecondNumber.text = "0"
            lblSubtractionLabel.text = "Please enter values."
            
        } else {
        
        subFirstNumber = txtSubtractionFirstNumber.text!
        subSecondNumber = txtSubtractionSecondNumber.text!
        
        var fSubFirst = Float(subFirstNumber)
        var fSubSecond = Float(subSecondNumber)
        
        subAnswer = fSubFirst! - fSubSecond!
        
        var sSubAnswer = String(format: "%0.2f", subAnswer)
        
        lblSubtractionLabel.text = "\(sSubAnswer)"
            
        }
        
    }
    
    
    @IBAction func btnSubtractionClear(sender: UIButton) {
        
        txtSubtractionSecondNumber.text = ""
        txtSubtractionFirstNumber.text  = ""
        lblSubtractionLabel.text = "Answer"
        
    }
    
    func hideKeyboards(){
        txtSubtractionFirstNumber.resignFirstResponder()
        txtSubtractionSecondNumber.resignFirstResponder()
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboards()
    }
    
    
    
    
}

