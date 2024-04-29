//
//  MoviePath.swift
//  YassirTest
//
//  Created by Ayoub on 28/4/2024.
//

import Foundation


public enum MovieAPIPath {
    case movie
    case image
    case secondaryPath
    var path: String {
        switch self {
        case .movie:
            return "/3/discover/movie?"
        case .image:
            return "https://image.tmdb.org/t/p/w500/"
        case .secondaryPath:
            return "&language=en-US&sort_by=popularity.desc"
        }
    }
}
