//
//  ViewController.swift
//  Krohn_SearchApp
//
//  Created by student on 10/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var topicInfoText: UITextView!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var moreButtton: UIButton!
    
    var imageArray = [["cat1", "cat2", "cat3", "cat4", "cat5"],
                      ["dog1", "dog2", "dog3", "dog4", "dog5"],
                      ["horse1", "horse2", "horse3", "horse4", "horse5"],
                      ["cow1", "cow2", "cow3", "cow4", "cow5"],
                      ["racoon1", "racoon2", "racoon3", "racoon4", "racoon5"]]
    
    var animal_keywords = [["cat","feline","fur","cats","catnip"],
                           ["dog","woof","bark","collar","dogs"],
                           ["horse","equine","mane","hay","horses"],
                           ["cow","bovine","calf","grass","beef"],
                           ["racoon","trash","curious","raccoon","little"]]
    
    var animal_descriptions = ["Cats are a common, furry house pet. They have a wild range of personalities and can be anti-social or the loviest of creatures.","Dogs are playful, energetic house pets. They have been employed as guardians, military and police canines", "Horses are big animals that eat hay and grass. They are used to pull farm equipment and commonly used for recreational riding.", "Cows are multipurpose farm animals that depending on the breed are used for beef or milk production.","Raccoons are small curious furry creatures that are also known as 'trash pandas' on the internet for always getting stuck in dumpsters when looking for food. They are smart creatures with small hands so they have learned to get into trash cans and other places as they become more desperate for food. "]
                            
    var index1 = 0;
    var index2 = 0;

    @IBAction func searchButtonAction(_ sender: UIButton) {
        moreButtton.isEnabled = true;
        for i in 0...4{
            if(animal_keywords[i].contains(searchTextField.text!) == true){
                index1 = i;
                resultImage.image = UIImage(named: imageArray[index1][index2])
                topicInfoText.text = animal_descriptions[i]
                break;
            }
            if(animal_keywords[i].contains(searchTextField.text!) == false){
                resultImage.image = UIImage(named: "robot")
                topicInfoText.text = "We're sorry, please try another keyword"
            }
            
        }
        
    
    }
    
    @IBAction func showMoreButton(_ sender: UIButton) {
        index2+=1;
        resultImage.image = UIImage(named: imageArray[index1][index2])

        if(index2 == 4){
            moreButtton.isEnabled = false;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultImage.image = UIImage(named:"robot")

    }
    

}

