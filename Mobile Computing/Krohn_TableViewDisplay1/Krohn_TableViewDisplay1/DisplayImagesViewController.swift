//
//  DisplayImagesViewController.swift
//  Krohn_TableViewDisplay1
//
//  Created by student on 11/18/21.
//

import UIKit

class DisplayImagesViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func getInfo(_ sender: UIButton) {
        displayLabel.text = descArray[index]
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var selection : String?
    
    var index = 0;
    
    var descArray = ["The Aberdeen Angus, sometimes simply Angus, is a Scottish breed of small beef cattle. It derives from cattle native to the counties of Aberdeen, Banff, Kincardine and Forfar in north-eastern Scotland. In 2018 the breed accounted for over 17% of the UK beef industry.", "The Red Angus is an international breed of beef cattle characterised by a reddish-brown coat colour. It derives from the Scottish Aberdeen Angus population and, apart from the coat colour, is identical to it. Red Angus are registered separately from black Angus cattle in Australia, Canada, and the United States.", "The Charolais or Charolaise is a French breed of taurine beef cattle. It originates in, and is named for, the Charolais area surrounding Charolles, in the Saône-et-Loire department, in the Bourgogne-Franche-Comté region of eastern France.", "Holstein Friesians are a breed of dairy cattle originating from the Dutch provinces of North Holland and Friesland, and Schleswig-Holstein in Northern Germany. They are known as the world's highest-production dairy animals.", "The Texas Longhorn is a breed of cattle known for its characteristic horns, which can extend to over 100 inches tip to tip for cows and bulls. They are descendants of the first cattle introduced in the New World, brought by explorer Christopher Columbus and the Spanish colonists.","The Ford F-Series is a series of trucks marketed and manufactured by Ford since the 1948 model year. Slotted above the Ford Ranger in the Ford truck model range, the F-Series is marketed as a range of full-sized pickup trucks. Alongside the F-150 (introduced in 1975), the F-Series also includes the Super Duty series (introduced in 1999), which includes the heavier-duty F-250 through F-450 pickups, F-450/F-550 chassis cabs, and F-600/F-650/F-750 Class 6-8 commercial trucks. The most popular version of the model line is the F-150 pickup truck, currently in its 14th generation. From 1953 to 1985, the entry-level F-series pickup was the ½ ton F-100.","The Chevrolet Silverado is a range of trucks manufactured by General Motors under the Chevrolet brand. Introduced for the 1999 model year, the Silverado is the successor to the long-running Chevrolet C/K model line. Taking its name from the top trim level from the Chevrolet C/K series, the Silverado is offered as a series of full-size pickup trucks, chassis cab trucks, and medium-duty trucks. The fourth generation of the model line was introduced for the 2019 model year.","Founded as the Dodge Brothers Company machine shop by brothers Horace Elgin Dodge and John Francis Dodge in the early 1900s, Dodge was originally a supplier of parts and assemblies to Detroit-based automakers like Ford. They began building complete automobiles under the Dodge Brothers brand in 1914, predating the founding of Chrysler Corporation. The factory located in Hamtramck, Michigan was the Dodge main factory from 1910 until it closed in January 1980. John Dodge died from the Spanish flu in January 1920, having lungs weakened by tuberculosis 20 years earlier. Horace died in December of the same year, perhaps weakened by the Spanish flu, though the cause of death was cirrhosis of the liver. Their company was sold by their families to Dillon, Read & Co. in 1925 before being sold to Chrysler in 1928.","The Nissan Titan is a full-size pickup truck manufactured in the United States for the North American market by Nissan. It was named for the Titans of Greek mythology.","The Toyota Tundra is a pickup truck manufactured in the United States by the Japanese manufacturer Toyota since May 1999. The Tundra was the second full-size pickup to be built by a Japanese manufacturer (the first was the Toyota T100), but the Tundra was the first full-size pickup from a Japanese manufacturer to be built in North America. The Tundra was nominated for the North American Truck of the Year award and was Motor Trend magazine's Truck of the Year in 2000 and 2008. Initially built in a new Toyota plant in Princeton, Indiana, production was consolidated in 2008 to Toyota's San Antonio, Texas, factory and is the only full-size pickup truck manufactured in Texas.","A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas. The fruit is variable in size, color, and firmness, but is usually elongated and curved, with soft flesh rich in starch covered with a rind, which may be green, yellow, red, purple, or brown when ripe. The fruits grow in clusters hanging from the top of the plant. Almost all modern edible seedless (parthenocarp) bananas come from two wild species – Musa acuminata and Musa balbisiana. The scientific names of most cultivated bananas are Musa acuminata, Musa balbisiana, and Musa × paradisiaca for the hybrid Musa acuminata × M. balbisiana, depending on their genomic constitution. The old scientific name for this hybrid, Musa sapientum, is no longer used.","An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe and were brought to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek, and European Christian tradition.","he orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually (apomixis through nucellar embryony); varieties of sweet orange arise through mutations.","A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis. Grapes can be eaten fresh as table grapes, used for making wine, jam, grape juice, jelly, grape seed extract, vinegar, and grape seed oil, or dried as raisins, currants and sultanas. Grapes are a non-climacteric type of fruit, generally occurring in clusters.","The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in products such as candy, soap, lip gloss, perfume, and many others."]
                      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if selection == "Angus"{
            index = 0
            imageView.image = UIImage(named:"Angus")
        }
        if selection == "Red Angus"{
            index = 1
            imageView.image = UIImage(named:"Red Angus")
        }
        if selection == "Charolais"{
            index = 2
            imageView.image = UIImage(named:"Charolais")
        }
        if selection == "Holsteins"{
            index = 3
            imageView.image = UIImage(named:"Holstein")
        }
        if selection == "Long Horn"{
            index = 4
            imageView.image = UIImage(named:"Longhorn")
        }
        if selection == "Ford"{
            index = 5
            imageView.image = UIImage(named:"Ford")
        }
        if selection == "Chevy"{
            index = 6
            imageView.image = UIImage(named:"Chevy")
        }
        if selection == "Dodge"{
            index = 7
            imageView.image = UIImage(named:"Dodge")
        }
        if selection == "Nissan"{
            index = 8
            imageView.image = UIImage(named:"Nissan")
        }
        if selection == "Toyota"{
            index = 9
            imageView.image = UIImage(named:"Toyota")
        }
        if selection == "Banana"{
            index = 10
            imageView.image = UIImage(named:"banana")
        }
        if selection == "Apple"{
            index = 11
            imageView.image = UIImage(named:"apple")
        }
        if selection == "Orange"{
            index = 12
            imageView.image = UIImage(named:"orange")
        }
        if selection == "Grapes"{
            index = 13
            imageView.image = UIImage(named:"grapes")
        }
        if selection == "Strawberry"{
            index = 14
            imageView.image = UIImage(named:"strawberry")
        }
    

        // Do any additional setup after loading the view.
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
