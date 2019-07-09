//
//  DetailViewController.swift
//  MovieList
//
//  Created by shruthi palchandar on 9/7/19.
//  Copyright © 2019 Shruezee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblRated: UILabel!
    @IBOutlet var lblLanguage: UILabel!
    @IBOutlet var lblGenere: UILabel!
    @IBOutlet var lblImdbRating: UILabel!
    @IBOutlet var lblReleaseDate: UILabel!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblDirector: UILabel!
    @IBOutlet var lblActor: UILabel!
    @IBOutlet var lblAwards: UILabel!
    @IBOutlet var txtViewPlot: UITextView!
    
    static var movie:Movie? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func setData() {
        let movieData = DetailViewController.movie
        
        lblTitle.text = "Title: " + (movieData?.title ?? "")
        lblActor.text = "Actors: " + (movieData?.actors ?? "")
        lblLanguage.text = "Language: " + (movieData?.language ?? "")
        lblGenere.text = "Genre: " + (movieData?.genre ?? "")
        lblReleaseDate.text = "Release Date: " + (movieData?.releaseDate ?? "")
        lblAwards.text = "Award: " + (movieData?.award ?? "")
        lblImdbRating.text = "IMDB: " + (movieData?.imdbRating ?? "")
        lblDirector.text = "Director: " + (movieData?.director ?? "")
        lblRated.text = "Rated: " + (movieData?.rated ?? "")
        
            txtViewPlot.text = "Plot: " + (movieData?.plot ?? "")

        if let imageURL = URL(string: movieData?.images.first ?? "") {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.imgView.image = image
                    }
                }
            }
        }
    }
}
