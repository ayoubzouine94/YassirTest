//
//  MovieService.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import Foundation


class MovieService {
    

    static func fetch<T: Decodable>(path: MovieAPIPath,esponseType: T.Type) async throws -> T? {
        
        guard let apiKey = ConfigService.readConfigFromPlist()?.apiKey, let baseURL = ConfigService.readConfigFromPlist()?.baseURL else {
          return nil
        }
     
        let urlString = "\(baseURL)\(path.path)api_key=\(apiKey)\(MovieAPIPath.secondaryPath.path)"
        
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL")
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decodedResponse = try JSONDecoder().decode(T.self, from: data)
        return decodedResponse
    }
}






