//
//  ViewController.swift
//  Krohn_Calculator
//
//  Created by student on 9/30/21.
//

import UIKit

class ViewController: UIViewController {
    var operand1:Double = 0.0
    var operand2:Double = 0.0
    var calcOperator:Character = " "
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        DisplayLabel.text = " "
        calcOperator = " "
        operand1 = 0.0
        operand2 = 0.0
    }
    @IBAction func buttonC(_ sender: UIButton) {
        if operand2 > 0{
            operand2 = 0
            DisplayLabel.text = DisplayLabel.text! + "C"
        }
       
    }
    @IBAction func buttonPM(_ sender: UIButton) {
        operand1 = -operand1
        DisplayLabel.text = "-" + DisplayLabel.text!
        
        
    }
    @IBAction func buttonDivision(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "÷"
        if calcOperator == " "{
            calcOperator = "÷"
        }
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    @IBAction func buttonMinus(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "-"
        if calcOperator == " "{
            calcOperator = "-"
        }
    }
    @IBAction func buttonMulti(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "x"
        if calcOperator == " "{
            calcOperator = "x"
        }
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        var output:Double = 0.0
        if output == 0.0{
            if calcOperator == "+"{
                output = operand1 + operand2
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "-"{
                output = operand1 - operand2
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "÷"{
                output = operand1 / operand2
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "x"{
                output = operand1 * operand2
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            calcOperator = " "
            
        }
        else{
            if calcOperator == "+"{
                output = output + operand1 + operand2
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "-"{
                output = output - (operand1 - operand2)
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "÷"{
                output = output / (operand1 / operand2)
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            if calcOperator == "x"{
                output = output * (operand1 * operand2)
                DisplayLabel.text = "\(output)";
                calcOperator = " "
            }
            calcOperator = " "
        }
        }
    @IBAction func button0(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "0"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 0
             }
            else{
                 operand2 = 0
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10
        }
        
        count+=1;
    }
    @IBAction func button1(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "1"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 1
             }
            else{
                 operand2 = 1
             }
            count+=1;
        }
        else{
           
            operand1 = operand1 * 10 + 1
        }
        
        count+=1;
    }
    
    @IBAction func button2(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "2"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 2
             }
            else{
                 operand2 = 2
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 2
        }
        
        count+=1;
    }
    
    @IBAction func button3(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "3"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 3
             }
            else{
                 operand2 = 3
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 3
        }
        
        count+=1;
    }
    @IBAction func button4(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "4"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 4
             }
            else{
                 operand2 = 4
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 4
        }
        
        count+=1;
    }
    @IBAction func button5(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "5"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 5
             }
            else{
                 operand2 = 5
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 5
        }
        
        count+=1;
    }
    @IBAction func button6(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "6"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 6
             }
            else{
                 operand2 = 6
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 6
        }
        
        count+=1;
    }
    @IBAction func button7(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "7"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 7
             }
            else{
                 operand2 = 7
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 7
        }
        
        count+=1;
    }
    @IBAction func button8(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "8"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 8
             }
            else{
                 operand2 = 8
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 8
        }
        
        count+=1;
    }
    @IBAction func button9(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "9"
        if count == 0{
            if operand1 == 0.0{
                 operand1 = 9
             }
            else{
                 operand2 = 9
             }
            count+=1;
        }
        else{
            operand1 = operand1 * 10 + 9
        }
        
        count+=1;
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "."
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

