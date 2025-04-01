# Nike Store App

A beautifully designed Flutter application that showcases Nike products, providing users with a seamless shopping experience. This app features dynamic animations, intuitive navigation, and a responsive interface suitable for all platforms.

## Features

- **Product Showcase:** Browse through a curated list of Nike sneakers with detailed images and descriptions.
- **Product Details:** Shows details of the products including the name of the shoe, a description, and the price.
- **Add to Cart:** A button to add a product to the cart
- **My Cart Page:**
- **Responsive Design**
- **Intro Page**: A starter screen before entering the app
- **Side Navigation Panel**: To move to other pages of the app
- **Bottom Navigation Panel:** To transition from the shooping page to cart page quickly
- **Animations**

## Demo

https://github.com/user-attachments/assets/6391daab-4f37-4a59-84ab-2432c7c2f37a


## Usage

### Intro Page
The app launches with an intro page that gives the marketing material of the app, and then the user can goto  the main app

### Browsing Products
On the home screen, the user can browse and explore the collection of available Nike sneakers.

### Viewing Product Details
Users can also see details of the product, like the Name of the shoe, description, and price.

### Adding Products to Cart
Users can add products to their cart by tapping the "Add to Cart" (+) button.

### My Cart Page
Users can view all the products in their cart.

### Side and Bottom Navigation Panels
Users can easily navigate between the various screens using the two navigation panels.


## Project Structure

The project follows a standard Flutter directory structure:
<pre>
  nike/ 
  │── lib/           # Contains the main application code 
  │ ├── components/  # Stores the elements (cart/shoe/nav)
  │ ├── images/      # Stores the product images
  │ ├── models/      # Stores the structure of the product for the shop and cart
  │ ├── pages/       # All pages within the app
  │ ├── main.dart    # The entry point of the application 
  │── test/          # Contains test files for the application 
  │── pubspec.yaml   # Defines dependencies and project metadata 
  │── README.md      # Project documentation
</pre>

## Dependencies

The project uses the following dependencies:

- **`cupertino_icons`**
- **`google_nav_bar`**
- **`provider`**
