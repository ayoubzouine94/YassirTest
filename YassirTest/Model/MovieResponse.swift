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

// MARK: - Result
struct Result: Codable {
   
    let backdropPath: String?
    let id: Int?
    let  overview: String?
    let  releaseDate:String?
    let title: String?
    var backdropURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/original/\(backdropPath ?? "")")!
    }
    enum CodingKeys: String, CodingKey {
   
         case backdropPath = "backdrop_path"
         case id
         case overview
         case releaseDate = "release_date"
         case title
     }
}

 




