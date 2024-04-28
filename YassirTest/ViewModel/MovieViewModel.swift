//
//  MovieViewModel.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import Foundation



final class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    func getMovies(path: MovieAPIPath) async {
        do {
            let movies = try await MovieService.fetch(path: path,esponseType: MovieResponse.self)
            DispatchQueue.main.async {
                self.movies = movies.results?.map {
                    Movie(result: $0)
                } ?? []
            }
        }
        catch(let error) {
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
