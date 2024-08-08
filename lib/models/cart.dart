import 'package:flutter/material.dart';
import 'package:myapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike GT Jump',
      price: '120',
      description: 'Shoes for men',
      imagePath: 'lib/images/gt-jump.png',
    ),
    Shoe(
      name: 'Ja Morant',
      price: '200',
      description: 'Shoes of Ja Morant',
      imagePath: 'lib/images/ja.png',
    ),
    Shoe(
      name: 'Air Lebron',
      price: '350',
      description: 'Air Lebron for the win',
      imagePath: 'lib/images/lebron.png',
    ),
    Shoe(
      name: 'Nike Mercurial',
      price: '400',
      description: 'Cool Shoes',
      imagePath: 'lib/images/mercurial.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
