# Weather App

The Weather App is a Flutter-based application that provides real-time weather updates for any location. It searches for cities based on the device's location and lets the user view detailed weather conditions, including temperature, weather conditions, and the current city.
It also implements additional features such as light and dark mode support and improved state management.

## Features

- **Real-time Weather:** Fetches real-time weather data from an API. 
- **Visually appealing display:** Displays temperature, weather conditions, and the current city
- **Device Location:** Searches for the city using the device's current location
- **Light/Dark Mode:** Implements additional features such as light and dark mode support and improved state management.

## Demo

https://github.com/user-attachments/assets/aacebff6-ba6e-4d5b-b1fc-b82c2812be4b


## Usage

### Location Permissions
Upon launching the app, the user is asked to provide permissions for accessing the location of the device.

### Fetching the Weather Condition
On gaining access to the location, the app calls the weather API and fetches the details for that particular city

### Displaying the Weather Condition
On getting back the results from the API, the app aesthetically displays the weather conditions for the user.

### Light/Dark Mode
There is a button on the top-right corener of the application for the user to play with the light/dark mode of the app.


## Project Structure

The project follows a standard Flutter directory structure:
<pre>
  weather/ 
  │── assets/        # Store the JSON for the weather condition visuals
  │── lib/           # Contains the main application code 
  │ ├── components/  # Stores the elements (box/button)
  │ ├── models/      # Stores the structure of the needed weather information
  │ ├── pages/       # Pages to display the weather conditions
  │ ├── service/     # To call the API
  │ ├── theme/       # Implement the light/dark mode
  │ ├── main.dart    # The entry point of the application 
  │── test/          # Contains test files for the application 
  │── pubspec.yaml   # Defines dependencies and project metadata 
  │── README.md      # Project documentation
</pre>

## Dependencies

The project uses the following dependencies:

- **`http`**: For making API requests to fetch weather information
- **`provider`**: Used for state management, ensuring efficient updates when users toggle themes
