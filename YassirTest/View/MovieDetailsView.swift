//
//  MovieDetailsView.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie: Result
    var body: some View {
        VStack {
            ScrollView {
                AsyncImage(url: movie.backdropURL) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                VStack(alignment: .leading) {
                    Text(movie.title ?? "Unknown title")
                        .font(.title2.bold())
                    Text(movie.releaseDate ?? "Unknown date")
                        .font(.title3.bold())
                    Text(movie.overview ?? "No overview available")
                        .font(.headline)
                    
                }
            }
       
        }
        .padding()
    }
}


