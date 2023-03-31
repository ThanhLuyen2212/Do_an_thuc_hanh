import 'package:bai_tap_thuc_hanh/model/products.dart';
import 'package:flutter/material.dart';
import 'body_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: Text("Details"),
      ),
      body: BodyProduct(product: arguments),
    );
  }
}

class ProductDetailsArgument {
  final Products products;
  ProductDetailsArgument({required this.products});
}
