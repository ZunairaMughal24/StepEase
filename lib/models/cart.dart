import 'package:e_commerec/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShope = [
    Shoe(
        name: "Roshe One",
        price: "159",
        imagesPath: "assets/images/s12.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Zoom Freak",
        price: "100",
        imagesPath: "assets/images/ns2.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Air Jordans",
        price: "119",
        imagesPath: "assets/images/ns9.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Keyric 6",
        price: "170",
        imagesPath: "assets/images/ns1.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Revolution 5",
        price: "59.5",
        imagesPath: "assets/images/ns10.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Free Run",
        price: "84.9",
        imagesPath: "assets/images/ns11.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Air Max",
        price: "70",
        imagesPath: "assets/images/ns3.webp",
        description: "The forward thinking design of his latest signature shoe"),
    Shoe(
        name: "Blazer low",
        price: "60.5",
        imagesPath: "assets/images/ns4.webp",
        description: "The forward thinking design of his latest signature shoe"),
  ];

  // list of items in the cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShope;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
// adding items to user cart
  }

  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//removing items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
