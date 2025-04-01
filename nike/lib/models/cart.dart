import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1',
        price: '180',
        imagePath: 'lib/images/Nike2.png',
        description:
            'The Air Jordan 1 Retro High remakes the classic sneaker, giving you a fresh look with a familiar feel.'),
    Shoe(
        name: 'Dunk High By You',
        price: '155',
        imagePath: 'lib/images/Nike1.png',
        description:
            'Take a seat at the table and add your special touch to the hoops-to-streets icon.'),
    Shoe(
        name: 'Air Max Portal',
        price: '80',
        imagePath: 'lib/images/Nike4.png',
        description:
            'Transport your style with a new Air Max. The Portal is the perfect blend of chunky and sleek.'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
