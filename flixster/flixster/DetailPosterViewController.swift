//
//  DetailPosterViewController.swift
//  flixster
//
//  Created by Bryson Smith on 2/3/23.
//

import UIKit
import Nuke

class DetailPosterViewController: UIViewController {
    
    
    @IBOutlet weak var movieImage: UIImageView!
    var poster: Poster!

    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var overViewText: UITextView!
    @IBOutlet weak var countVoteLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: URL(string:Poster.posterBaseURLString + poster.poster_path)!, into: movieImage)
        voteCountLabel.text = String(poster.vote_average)
        countVoteLabel.text = String(poster.vote_count)
        overViewText.text = poster.overview
        popularityLabel.text = "35.6"
        movieTitle.text = poster.original_title

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
