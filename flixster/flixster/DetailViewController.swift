//
//  DetailViewController.swift
//  flixster
//
//  Created by Bryson Smith on 1/31/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var voteCountLabel: UILabel!
    
    @IBOutlet weak var countVoteLabel: UILabel!
    
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    
    @IBOutlet weak var overViewText: UITextView!
    
    @IBOutlet weak var movieTitle: UILabel!
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: URL(string:Movie.posterBaseURLString + movie.poster_path)!, into: movieImage)
        voteCountLabel.text = String(movie.vote_average)
        countVoteLabel.text = String(movie.vote_count)
        overViewText.text = movie.overview
        popularityLabel.text = "35.6"
        movieTitle.text = movie.original_title
        
        

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
