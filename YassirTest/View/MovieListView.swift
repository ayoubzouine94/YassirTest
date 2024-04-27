//
//  MovieListView.swift
//  YassirTest-test
//
//  Created by Ayoub on 27/4/2024.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel = MovieViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.moviess ?? [], id: \.id) { movie in
                NavigationLink(destination: MovieDetailsView(movie: movie)) {
                    HStack {
                        AsyncImage(url: movie.backdropURL) { image in
                            
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 150)
                        } placeholder: {
                            ProgressView()
                        }
                        VStack(alignment: .leading) {
                            Text(movie.title ?? "Unknown title")
                                .font(.title2.bold())
                            Text(viewModel.getYear(year: movie.releaseDate ?? "Unknown title")   )
                                .font(.headline)
                        }
                    }
                }
            }
        }
        .task {
            await viewModel.getMovies()
        }
    }
    
}

#Preview {
    MovieListView()
}
