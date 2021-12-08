//
//  ViewController.swift
//  CoordinateDemo
//
//  Created by student on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let minx = ImageViewOutlet.frame.minX
        let miny = ImageViewOutlet.frame.minY
        print(minx, ",", miny)
        
        //change the location of the image view to the right bottom corner
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //change the location of the image view to center
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
        
        
    }
}
