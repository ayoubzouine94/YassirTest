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
            List(viewModel.movies, id: \.id) { movie in
                NavigationLink(destination: MovieDetailsView(movie: movie)) {
                    HStack {
                        AsyncImage(url: movie.backdropURL) { image in
                            image
                                .resizable()
                                .frame(width: 100, height: 150)
                                .scaledToFill()
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        VStack(alignment: .leading) {
                            Text(movie.title)
                                .font(.title3.bold())
                            Text(viewModel.getYear(year: movie.releaseDate))
                                .font(.headline)
                        }
                        .padding(.bottom,80)
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
