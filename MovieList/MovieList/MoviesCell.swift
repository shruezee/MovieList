//
//  MoviesCell.swift
//  MovieList
//
//  Created by shruthi palchandar on 8/7/19.
//  Copyright © 2019 Shruezee. All rights reserved.
//

import UIKit
class MoviesCell: UITableViewCell {
    
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblRated: UILabel!
    @IBOutlet var lblLanguage: UILabel!
    @IBOutlet var lblGenere: UILabel!
    @IBOutlet var lblImdbRating: UILabel!
    @IBOutlet var lblReleaseDate: UILabel!
    @IBOutlet var imgViewPoster: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
