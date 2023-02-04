//
//  MovieCell.swift
//  flixster
//
//  Created by Bryson Smith on 1/30/23.
//

import UIKit
import Nuke



class MovieCell: UITableViewCell {
    

   
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieOverview: UILabel!
    func configure(with movie: Movie) {
        movieTitle.text = movie.original_title
        movieOverview.text = movie.overview
        // Load image async via Nuke library image loading helper method
         Nuke.loadImage(with: URL(string:Movie.posterBaseURLString + movie.poster_path)!, into: movieImage)
 //check if the base url is right
        

        
       
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
