//
//  Movie.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//
import Foundation


struct MovieResponse: Codable {
    let results: [Result]?
    
}


struct Result: Codable {
    internal init(backdropPath: String? = nil, id: Int? = nil, overview: String? = nil, releaseDate: String? = nil, title: String? = nil, backdropURL: URL? = nil) {
        self.backdropPath = backdropPath
        self.id = id
        self.overview = overview
        self.releaseDate = releaseDate
        self.title = title
        self.backdropURL = backdropURL
    }
    let backdropPath: String?
    let id: Int?
    let  overview: String?
    let  releaseDate:String?
    let title: String?
    var backdropURL: URL?
    
    enum CodingKeys: String, CodingKey {
         case backdropPath = "backdrop_path"
         case id
         case overview
         case releaseDate = "release_date"
         case title
        
     }
}
