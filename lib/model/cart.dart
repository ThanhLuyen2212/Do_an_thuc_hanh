import 'package:bai_tap_thuc_hanh/model/products.dart';

class Cart {
  static List<Products> cart = [];

  void addProductToCart(Products products) {
    cart.add(products);
  }

  List<Products> getCart() {
    return cart;
  }
}
