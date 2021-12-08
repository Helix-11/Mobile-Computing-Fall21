//
//  ResultViewController.swift
//  Krohn_ConvertTemperature
//
//  Created by student on 11/2/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var kelvinLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageArray = [String]()
    var kelvin = 0.0
    var far = 0.0
    var temp = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.text = String(far)
        kelvinLabel.text = String(kelvin)
        temp = Double(fahrenheitLabel.text!)!
        if (temp < 5){
            textLabel.text = "Freezing"
            //imageView.image = UIImage(named: "snow")
            animateImage("snow")
        }
        if (temp >= 5 && temp <= 59){
            textLabel.text = "Cold"
            //imageView.image = UIImage(named: "cold")
            animateImage("cold")
        }
        if (temp >= 60 && temp <= 77){
            textLabel.text = "Pleasant Weather"
            //imageView.image = UIImage(named: "nice")
            animateImage("nice")
        }
        if (temp >= 78 && temp <= 95){
            textLabel.text = "Hot"
            //imageView.image = UIImage(named: "warm")
            animateImage("warm")
        }
        if (temp > 95){
            textLabel.text = "Boiling Hot"
            //imageView.image = UIImage(named: "hotttt")
            animateImage("hotttt")
        }
        
        
        

        // Do any additional setup after loading the view.
    }
    func animateImage(_ imageName: String){
            //The image is hidden or opaque
            UIView.animate(withDuration: 1, animations: {
                self.imageView.alpha = 0.0
            })
            
            //Image will appear with the given duration
            UIView.animate(withDuration: 1, delay: 0.2, animations: {
                self.imageView.alpha = 1.0
                self.imageView.image = UIImage(named:imageName)
            })
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
