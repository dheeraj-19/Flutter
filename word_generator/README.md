# Word Generator

A Flutter application that generates random word pairs and allows users to mark their favorite ones. 

## Features

- **Random Word Pair Generation:** 
- **Favorites Management:** 
- **Responsive UI:** 

## Demo

https://github.com/user-attachments/assets/8078833a-b378-418e-a468-bd617ea439b9


## Usage

### Generating Word Pairs
Upon launching the app, the home screen displays randomly generated word pairs. These word pairs are dynamically created using the `english_words` package, ensuring unique and diverse combinations each time.

### Marking Favorites
Users can tap the heart icon next to a word pair to add or remove it from their favorites list. Favorited words are visually highlighted for easy identification.

### Viewing Favorites
A separate favorites section is available, allowing users to view all their marked word pairs in one place. This feature helps users keep track of their preferred word combinations.

## Project Structure

The project follows a standard Flutter directory structure:
<pre>
  word_generator/ 
  │── lib/           # Contains the main application code 
  │ ├── main.dart    # The entry point of the application 
  │── test/          # Contains test files for the application 
  │── pubspec.yaml   # Defines dependencies and project metadata 
  │── README.md      # Project documentation
</pre>

## Dependencies

The project uses the following dependencies:

- **`english_words`**: A package that provides a set of English words for generating random word pairs. This package is essential for dynamically creating meaningful word combinations.
