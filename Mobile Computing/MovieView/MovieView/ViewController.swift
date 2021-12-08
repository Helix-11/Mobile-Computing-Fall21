//
//  ViewController.swift
//  MovieView
//
//  Created by student on 11/11/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath){
        titleOutlet.text = "Movie Title: \(movies[index.row].title)"
        
        yearReleasedOutlet.text = "Year Released: \(movies[index.row].releasedYear)"
        
        ratingOutlet.text = "Rating: \(movies[index.row].movieRating)"
        
        boxOfficeOutlet.text = "Box Office: \(movies[index.row].boxOffice)"
    }
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearReleasedOutlet: UILabel!
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    @IBOutlet weak var boxOfficeOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        
        
        
        
        
    }


}

