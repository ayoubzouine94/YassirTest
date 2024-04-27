//
//  MovieService.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import Foundation

final class MovieService {
    static let baseUrl = "https://api.openweathermap.org"
    
    static func fetch<T: Decodable>(esponseType: T.Type) async throws -> T {
        let urlString = "https://api.themoviedb.org/3/discover/movie?api_key=c9856d0cb57c3f14bf75bdc6c063b8f3&language=en-US&sort_by=popularity.desc"
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL")
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decodedResponse = try JSONDecoder().decode(T.self, from: data)
        return decodedResponse
    }
}





