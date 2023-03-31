import 'package:flutter/material.dart';
import '../model/categories.dart';
import '../model/products.dart';
import '../model/utilities.dart';

//home detail
class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        const CategoriesStore(),
        ProductPopular(),
      ],
    ));
  }
}

//home fragment categories

class CategoriesStore extends StatelessWidget {
  const CategoriesStore({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Categories.init();
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Row(
            children: const [
              Expanded(
                  child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )),
              Text(
                'See more',
                style: TextStyle(fontSize: 16, color: Colors.lightGreen),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                //itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoriesItem(category: categories[index]);
                }),
          )
        ]),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  Categories category;

  CategoriesItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(5),
      child: Image.network(category.image),
    );
  }
}

// home fragment product

class ProductPopular extends StatelessWidget {
  final products = Products.init();

  ProductPopular({super.key});

  @override
  Widget build(BuildContext context) {
    var productsAPI = Utilities().getProducts();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Row(
          children: const [
            Expanded(
                child: Text(
              'Popular Products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            )),
            Text(
              'See more',
              style: TextStyle(fontSize: 16, color: Colors.lightGreen),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7),
              itemBuilder: (context, index) {
                return ProductItem(
                  product: products[index],
                );
              }),
        )
      ]),
    );
  }
}

class ProductItem extends StatelessWidget {
  Products? product;

  ProductItem({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product!.image,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                product!.title,
              )),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.green,
                ),
                child: Text(
                  product!.price.toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
