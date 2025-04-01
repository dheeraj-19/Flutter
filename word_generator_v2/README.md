# Word Generator

An enhanced Flutter application that generates random word pairs and allows users to mark their favorite ones. This version builds upon the original [Word Generator](https://github.com/dheeraj-19/Flutter/tree/main/word_generator) by introducing additional features such as a bottom navigation bar and a historical list of the generated word pairs

## Features

- **Random Word Pair Generation:** Dynamically generates unique word pairs using the `english_words` package. 
- **Favorites Management:** Users can mark word pairs as favorites by tapping the heart icon. The selected word pairs are visually highlighted and stored persistently.
- **Favorites List:** Users can navigate to a dedicated favorites section to view and manage their saved word pairs.
- **Smooth Navigation:** Utilizes Flutter’s navigation system to transition between the home screen and the favorites screen seamlessly.
- **Historical Word Pairs:** Implements a historical scrolling list of all the generated word pairs.


## Demo

https://github.com/user-attachments/assets/bf8f9257-be77-4c6c-b05e-aae9dcd6f44a


## Usage

### Generating Word Pairs
Upon launching the app, the home screen displays a list of randomly generated word pairs. The words are dynamically created using the `english_words` package, ensuring a unique combination every time the app is opened or refreshed.

### Marking Favorites
Users can tap the heart icon next to a word pair to add it to their favorites list.

### Viewing Favorites
A dedicated favorites screen is available where users can view all their marked word pairs. This section makes it easy to review and manage preferred word pairs.

### Bottom Navigation Bar
A visually appealing bottom navigation bar to transition between the home screen and the favorites screen seamlessly

### Historical Work Pairs
A scrollable list of all the generated word pairs which the users can go back and check, also they can like and unlike the word pairs from that list.

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
