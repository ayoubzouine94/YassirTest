//
//  YassirTestUITests.swift
//  YassirTestUITests
//
//  Created by Ayoub on 26/4/2024.
//

import XCTest
@testable import YassirTest

 class MovieViewModelTests: XCTestCase {


    var viewModel: MovieViewModel!
     
    override func setUp() {
        super.setUp()
        viewModel = MovieViewModel()
    }

  
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
     
    func testMoviesMapping() {
        let mockedResults = [
            Result(backdropPath: "/mockpath1.jpg", id: 1, overview: "Overview 1", releaseDate: "2024-01-01", title: "Mock Movie 1"),
            Result(backdropPath: "/mockpath2.jpg", id: 2, overview: "Overview 2", releaseDate: "2024-02-01", title: "Mock Movie 2")
        ]

        let mockedMovies = mockedResults.map { Movie(result: $0) }

        viewModel.movies = mockedMovies
        XCTAssertEqual(viewModel.movies.count, mockedMovies.count)
        XCTAssertEqual(viewModel.movies[0].title, "Mock Movie 1")
        XCTAssertEqual(viewModel.movies[1].title, "Mock Movie 2")
        XCTAssertEqual(viewModel.movies.count, 2)
       
    }
}

