//
//  MovieDetailsView.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    @ObservedObject var viewModel = MovieViewModel()
    let movie: Movie
    var body: some View {
        VStack {
            ScrollView {
                AsyncImage(url: movie.backdropURL) { image in
                    image
                        .resizable()
                        .frame(width: 200, height: 300)
                        .scaledToFill()
                        
                } placeholder: {
                    ProgressView()
                }
                .padding(.bottom)
                VStack(alignment: .leading, spacing: 10) {
                    Text(movie.title)
                        .font(.title2.bold())
                    Text(viewModel.getYear(year: movie.releaseDate))
                        .font(.title3.bold())
                    Text(movie.overview)
                        .font(.headline)
                }
                .padding(.horizontal, 8)
            }
       
        }
        
    }
}


