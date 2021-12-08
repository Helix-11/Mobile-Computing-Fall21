//
//  ViewController.swift
//  Krohn_TableViewDisplay1
//
//  Created by student on 11/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allProducts", for: indexPath)
                //Assign the data into the cell
                cell.textLabel?.text = listArray[indexPath.row]
                return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var listArray = ["Trucks", "Cattle", "Fruits"]
    
    var destinationCategory = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "showProducts"{
                let destination = segue.destination as!  ProductsDisplayViewController
                
                destination.category = listArray[(tableView.indexPathForSelectedRow?.row)!]
                //Assigning product to the destination
                
            }
        }


}


    


