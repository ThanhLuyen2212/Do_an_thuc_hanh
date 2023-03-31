import 'package:bai_tap_thuc_hanh/cart/body_cart.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Cart Details"),
      ),
      body: BodyCart(),
    );
  }
}
