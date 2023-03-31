class Products {
  int? id;
  String title;
  String description;
  String image;
  double price;

  Products(
      {this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  static List<Products> init() {
    List<Products> data = [
      Products(
          id: 1,
          title: 'Bread',
          description: 'Founded as a bakery brand in singapore in200',
          image: 'https://picsum.photos/250?image=9',
          price: 8.0),
    ];
    return data;
  }
}
