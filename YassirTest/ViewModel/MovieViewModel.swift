//
//  MovieViewModel.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import Foundation



final class MovieViewModel: ObservableObject {
    @Published var moviess: [Result]?
    @Published var movi: Result?
    
    
    func getMovies() async {
        do {
            let movies = try await MovieService.fetch(esponseType: MovieResponse.self)
            DispatchQueue.main.async {
                self.moviess = movies.results
            }
        }catch(let error) {
            print(error.localizedDescription)
        }
    }
    
    func getYear(year: String) -> String {
        let dateComponents = year.split(separator: "-")
        if let year = dateComponents.first {
            let yearString = String(year)
            return yearString
        }
        return ""
    }
}
