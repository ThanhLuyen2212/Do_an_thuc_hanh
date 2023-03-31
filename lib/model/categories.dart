class Categories {
  int? id;
  String title;
  String image;

  Categories({this.id, required this.title, required this.image});

  static List<Categories> init() {
    List<Categories> data = [
      Categories(
          id: 1,
          title: 'HighLand',
          image:
              'C:\\Users\\nguye\\Desktop\\bai_tap_thuc_hanh\\lib\\assets\\images\\2.jpg'),
    ];
    return data;
  }
}
