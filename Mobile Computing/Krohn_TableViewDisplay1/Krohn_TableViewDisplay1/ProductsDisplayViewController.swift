//
//  ProductsDisplayViewController.swift
//  Krohn_TableViewDisplay1
//
//  Created by student on 11/18/21.
//

import UIKit

class ProductsDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productsTableView.dequeueReusableCell(withIdentifier: "showProducts", for: indexPath)
                //Assign the data into the cell
                cell.textLabel?.text = categoryArray[indexPath.row]
                return cell
    }
    
    
    @IBOutlet weak var productsTableView: UITableView!
    
    
    
    var cattleArray = ["Angus", "Red Angus", "Charolais", "Holsteins", "Long Horn"]
    var trucksArray = ["Ford", "Chevy", "Dodge", "Nissan", "Toyota"]
    var fruitsArray = ["Banana", "Apple", "Orange", "Grapes", "Strawberry"]
    var categoryArray = [String]()
    var category : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
        if category == "Trucks"{
            categoryArray = trucksArray
        }
        if category == "Cattle"{
            categoryArray = cattleArray
        }
        if category == "Fruits"{
            categoryArray = fruitsArray
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "displayImages"{
                let destination = segue.destination as!  DisplayImagesViewController
                
                destination.selection = categoryArray[(productsTableView.indexPathForSelectedRow?.row)!]
                //Assigning product to the destination
                
            }
        }
    
    
}


    

  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


