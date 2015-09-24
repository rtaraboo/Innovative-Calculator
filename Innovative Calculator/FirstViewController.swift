//
//  FirstViewController.swift
//  Innovative Calculator
//
//  Created by Rosario Tarabocchia on 9/23/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtAddFirstNumber: UITextField!
    @IBOutlet weak var txtAddSecondNumber: UITextField!
    @IBOutlet weak var lblAddAnswer: UILabel!
    
    var addFirstNumber = ""
    var addSecondNumber = ""
    var addAnswer : Float = 0.0
    
    

    @IBOutlet weak var txtMultiplyFirstNumber: UITextField!
    @IBOutlet weak var txtMultiplySecondNumber: UITextField!
    @IBOutlet weak var lblMultiplyAnswer: UILabel!
    
    var multiplyFirstNumber = ""
    var multiplySecondNumber = ""
    var multiplyAnswer : Float = 0.0
    
    
    @IBOutlet weak var txtDivideFirstNumber: UITextField!
    @IBOutlet weak var txtDivideSecondNumber: UITextField!
    @IBOutlet weak var lblDivideAnswer: UILabel!
    
    var divideFirstNumber = ""
    var divideSecondNumber = ""
    var divideAnswer : Float = 0.0
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAddCalculate(sender: UIButton) {
        
        if txtAddFirstNumber.text! == "" || txtAddSecondNumber.text! == "" {
            
            txtAddFirstNumber.text = "0"
            txtAddSecondNumber.text = "0"
            lblAddAnswer.text = "Please enter values."
            
        } else {
        
        
        
        addFirstNumber = txtAddFirstNumber.text!
        addSecondNumber = txtAddSecondNumber.text!
        
        var fAddFirst = Float(addFirstNumber)
        var fAddSecond = Float(addSecondNumber)
        
        addAnswer = fAddFirst! + fAddSecond!
        
        
        var sAddAnswer = String(format: "%0.2f", addAnswer)
        
        
        lblAddAnswer.text = "\(sAddAnswer)"
            
        }
        
        txtAddFirstNumber.resignFirstResponder()
        txtAddSecondNumber.resignFirstResponder()
        
    }
    
    
    @IBAction func btnAddClear(sender: UIButton) {
        
        lblAddAnswer.text = "Answer"
        txtAddFirstNumber.text = ""
        txtAddSecondNumber.text = ""
        
    }
    
    
    

    @IBAction func btnMutiplyCalculate(sender: UIButton) {
        
        if txtMultiplyFirstNumber.text! == "" || txtMultiplySecondNumber.text == "" {
            txtMultiplyFirstNumber.text = "0"
            txtMultiplySecondNumber.text = "0"
            lblMultiplyAnswer.text = "Please enter values."
            
        }
        
        else {
        
        
        multiplyFirstNumber = txtMultiplyFirstNumber.text!
        multiplySecondNumber = txtMultiplySecondNumber.text!
        
        var fMultiplyFirst = Float(multiplyFirstNumber)
        var fMultiplySecond = Float(multiplySecondNumber)
        
        multiplyAnswer = fMultiplyFirst! * fMultiplySecond!
        
        var sMultiplyAnswer = String(format: "%0.2f", multiplyAnswer)
        
        lblMultiplyAnswer.text = "\(sMultiplyAnswer)"
            
        }
        
        txtMultiplyFirstNumber.resignFirstResponder()
        txtMultiplyFirstNumber.resignFirstResponder()
        
        
    }
    
    
    
 
    @IBAction func btnMuliplyClear(sender: UIButton) {
        
        txtMultiplyFirstNumber.text = ""
        txtMultiplySecondNumber.text = ""
        lblMultiplyAnswer.text = "Answer"

        
    }
    
    
    
    
    
    @IBAction func btnDivideCalculate(sender: UIButton) {
        
        if txtDivideFirstNumber.text! == "" || txtDivideSecondNumber.text! == "" {
            txtDivideFirstNumber.text = "0"
            txtDivideSecondNumber.text = "0"
            lblDivideAnswer.text = "Please enter values."
            }
        
        else {
        
        divideFirstNumber = txtDivideFirstNumber.text!
        divideSecondNumber = txtDivideSecondNumber.text!
        
        var fDivideFirst = Float(divideFirstNumber)
        var fDivideSecond = Float(divideSecondNumber)
        
        divideAnswer = fDivideFirst! / fDivideSecond!
        
        var sDivideAnswer = String(format: "%0.2f", divideAnswer)
        
        lblDivideAnswer.text = "\(sDivideAnswer)"
            
        }
        
        txtDivideFirstNumber.resignFirstResponder()
        txtDivideSecondNumber.resignFirstResponder()
        
    }
    
    
    
    @IBAction func btnDivideClear(sender: UIButton) {
        
        txtDivideFirstNumber.text = ""
        txtDivideSecondNumber.text = ""
        lblDivideAnswer.text = "Answer"
    }
    
    
    
    
    
    
    


    

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
}
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
 
}

