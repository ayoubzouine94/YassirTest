//
//  Movie.swift
//  YassirTest
//
//  Created by Ayoub on 28/4/2024.
//

import Foundation


struct Movie: Identifiable, Hashable {

    let backdropPath: String
    let id: Int
    let  overview: String
    let  releaseDate:String
    let title: String
    let backdropURL: URL

    // MARK: - Inject result into movie (dependancy injection)
    init(result: Result) {
        self.backdropPath = result.backdropPath ?? ""
        self.id = result.id ?? 0
        self.overview = result.overview ?? ""
        self.releaseDate = result.releaseDate ?? ""
        self.title = result.title ?? ""
        self.backdropURL = URL(string: "https://image.tmdb.org/t/p/w500/\(result.backdropPath ?? "")") ?? URL(string: "")!
    }
    
}
