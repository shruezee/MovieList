//
//  Movies.swift
//  MovieList
//
//  Created by shruthi palchandar on 8/7/19.
//  Copyright © 2019 Shruezee. All rights reserved.
//

import Foundation

// Codable protocol not used as decoder having trouble with format
// Problem stated in invocation
// "No value associated with key CodingKeys(stringValue: \"movies\", intValue: nil) (\"movies\")."
//class Movies:Codable {
//    let movies: [Movie]
//
//
//}

struct Movie:Codable {
    let title: String
    let imdbRating: String
    let language: String
    let images: [String]
    let genre:String
    let releaseDate:String
    let rated:String
    let award:String
    let director:String
    let actors:String
    let plot:String
    
    init(title: String, imdbRating: String, language: String, images: [String], genre: String, releaseDate: String, rated: String, award:String, director:String, actors:String, plot:String) {
        self.title = title
        self.imdbRating = imdbRating
        self.language = language
        self.images = images
        self.releaseDate = releaseDate
        self.genre = genre
        self.rated = rated
        self.award = award
        self.actors = actors
        self.plot = plot
        self.director = director
    }
    init(_ dictionary:[String:Any]) {
        self.title = dictionary["Title"] as? String ?? ""
        self.imdbRating = dictionary["imdbRating"] as? String ?? ""
        self.language = dictionary["Language"] as? String ?? ""
        self.images = dictionary["Images"] as? [String] ?? []
        self.genre = dictionary["Genre"] as? String ?? ""
        self.releaseDate = dictionary["Released"] as? String ?? ""
        self.rated = dictionary["Rated"] as? String ?? ""
        self.award = dictionary["Awards"] as? String ?? ""
        self.actors = dictionary["Actors"] as? String ?? ""
        self.plot = dictionary["Plot"] as? String ?? ""
        self.director = dictionary["Director"] as? String ?? ""
    }
}
