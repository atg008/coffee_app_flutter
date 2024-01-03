import 'package:coffee_app_provider/models/coffee.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Americano',
      price: "310",
      imagePath: "lib/images/coffee-latte.png",
    ),

    // espresso
    Coffee(
      name: 'Expresso',
      price: "205",
      imagePath: "lib/images/expresso.png",
    ),

    // iced
    Coffee(
      name: 'Iced Coffee',
      price: "360",
      imagePath: "lib/images/ice-coffee.png",
    ),

    // Latte
    Coffee(
      name: 'Latte',
      price: "240",
      imagePath: "lib/images/pour.png",
    ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get list
  List<Coffee> get coffeeShop => _shop;

  // get cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
