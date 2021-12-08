//
//  ViewController.swift
//  Krohn_ConvertTemperature
//
//  Created by student on 11/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempTextField: UITextField!
    
    @IBOutlet weak var ConvertButton: UIButton!
    
    var value = ""
    var far = 0.0
    var kelvin = 0.0
    
    @IBAction func editingChanged(_ sender: UITextField) {
        ConvertButton.isEnabled = checkifNum();
    }
    
    
    
    
    func checkifNum()->Bool{
        value = tempTextField.text!
        if value.first == "-"{
            value.removeFirst()
        }
        if value.isEmpty{
            return false;
        }
        for val in value{
            if (val != "0" && val != "1" && val != "2" && val != "3" && val != "4" && val != "5" && val != "6" && val != "7" && val != "8" && val != "9"){
                return false;
            }
        }
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ConvertButton.isEnabled = false;
        
    }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
        let val = Double(self.tempTextField.text!)
        far = (val ?? 0) * (9/5) + 32
        kelvin = (val ?? 0) + 273.15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as!  ResultViewController
        
        //Assigning product to the destination
        destination.far = 0;
        destination.far = far;
        destination.kelvin = 0;
        destination.kelvin = kelvin;
    }

}

