//
//  ViewController.swift
//  Discount App Multi Contoller
//
//  Created by student on 10/19/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    @IBAction func CalcButton(_ sender: UIButton) {
        var amount = Double(AmountOutlet.text!)
        var discount = Double(DiscountOutlet.text!)
        var priceAfterDiscount = amount! - (amount!*discount!)/100
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

