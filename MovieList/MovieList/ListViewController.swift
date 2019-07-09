//
//  ListViewController.swift
//  MovieList
//
//  Created by shruthi palchandar on 8/7/19.
//  Copyright © 2019 Shruezee. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    final let url = URL(string: "https://api.myjson.com/bins/ea81z")
    // If url not working please update url with contents from movies.txt into http://myjson.com/. create new url and paste here
    private var movies: [Movie] = []

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        tableView.tableFooterView = UIView()
    }
    
    func downloadJson() {
        guard let downloadURL = url else {
            DisplayError(self)
            return
        }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                DisplayError(self)
                return
            }
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with:data, options: [])
                guard let jsonArray = jsonResponse as? [[String: Any]] else {
                    DisplayError(self)
                    return
                }
                for data in jsonArray {
                    self.movies.append(Movie(data)) // Adding value from data here
                }
                print(self.movies)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let parsingError {
                print("Error", parsingError)
            }
            }
            .resume()

//Expected to decode Array<Any> but found a dictionary instead."
//          decoder.decode([Movie].self, from: data)
//"Expected to decode Dictionary<String, Any> but found an array instead.
//          decoder.decode(Movies.self, from: data)
// Also tried decoder.decode([String:[Movie]].self, from: data)
           
//            do
//            {
//                let decoder = JSONDecoder()
//                let downloadedmovies = try decoder.decode([[Movie]].self, from: data)
//                self.movies = (downloadedmovies.first as! Movies).movies
//                DispatchQueue.main.async {
//                    self.tableView.reloadData()
//                }
//            }
//            catch let parsingError {
//                    print("Error", parsingError)
//            }
//            }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell") as? MoviesCell else { return UITableViewCell() }
        
        cell.lblTitle.text = "Title: " + movies[indexPath.row].title
        cell.lblRated.text = "Rated: " + movies[indexPath.row].rated
        cell.lblGenere.text = "Genere: " + movies[indexPath.row].genre
        cell.lblLanguage.text = "Language: " + movies[indexPath.row].language
        cell.lblImdbRating.text = "IMDB: " + movies[indexPath.row].imdbRating
        cell.lblReleaseDate.text = "Release Date: " + movies[indexPath.row].releaseDate
        
        cell.contentView.backgroundColor = UIColor.lightGray
        cell.backgroundColor = UIColor.lightGray
        
        let image = movies[indexPath.row].images.first ?? ""
        if let imageURL = URL(string: image) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.imgViewPoster.image = image
                    }
                }
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMovie = movies[indexPath.row]
        DetailViewController.movie = selectedMovie
    }
}

