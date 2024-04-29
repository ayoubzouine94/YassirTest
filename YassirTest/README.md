
# YassirTest

Welcome to the YassirTest Test project! This project demonstrates the use of the MVVM (Model-View-ViewModel) architecture in Swift, showcasing features such as asynchronous API calls, reading configuration from a plist file, and navigating between views.

## Table of Contents

- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Setup](#setup)
- [How to Run](#how-to-run)
- [Code Overview](#code-overview)
    - [Model](#model)
    - [ViewModel](#viewmodel)
    - [Service](#service)
    - [View](#view)
- [License](#license)

## Project Structure

The project follows the MVVM architecture:

- **Model**: Represents the data structure and business logic.
- **ViewModel**: Acts as an intermediary between the View and Model, providing data and handling user interactions.
- **Service**: Handles API calls and interactions with external data sources.
- **View**: SwiftUI views that render the user interface and bind to ViewModel data.

## Dependencies

- [Swift](https://swift.org/): The Swift programming language.
- [SwiftUI](https://developer.apple.com/xcode/swiftui/): Apple's UI framework for building modern apps.
- [Foundation](https://developer.apple.com/documentation/foundation): Core Swift framework for data handling.

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/ayoubzouine94/YassirTest
    ```

2. Navigate to the project directory:
    ```bash
    cd yassir-test
    ```

3. Open the Xcode project:
    ```bash
    open YassirTest-test.xcodeproj
    ```

4. In Xcode, configure the API key in the `Config.plist` file:
    - Add a key named `apiKey` and set its value to your API key.
    - Add a key named `baseURL` and set its value to your base URL.

## How to Run

1. Build and run the project in Xcode.
2. Ensure you have a valid API key in the `Config.plist` file.
3. The app should launch and demonstrate the MVVM architecture in action.

## Code Overview

### Model

- `Result.swift`: Defines the data structure for movie results, including properties such as title, release date, overview, and backdrop path.
- `Config.swift`: Defines the data structure for reading configuration from the `Config.plist` file, including API key and base URL.

### ViewModel

- `MovieViewModel.swift`: Manages data for the views, including fetching movies from the API and providing data to the views.

### Service

- `MovieService.swift`: Handles API calls to fetch movies and read configuration from the `Config.plist` file.

### View

- `MovieListView.swift`: Displays a list of movies and handles navigation to movie details.
- `MovieDetailView.swift`: Displays detailed information about a movie.

## License

This project is licensed under the [MIT License](LICENSE.md). Please see the license file for more information.
