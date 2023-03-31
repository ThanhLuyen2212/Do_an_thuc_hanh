import 'dart:convert';
import 'package:bai_tap_thuc_hanh/model/products.dart';
import 'package:http/http.dart' as http;

class Utilities {
  String url = 'https://192.168.0.100:3000/api/food';

  static List<Products> data = [];

  Future<List<Products>> getProducts() async {
    var res = await http.get(url as Uri);
    if (res.statusCode == 200) {
      var content = res.body;
      print(content.toString());
      var arr = json.decode(content)['food'] as List;

      return arr.map((e) => _fromJson(e)).toList();
    }
    return <Products>[];
  }

  Products _fromJson(Map<String, dynamic> item) {
    return new Products(
        title: item['title'],
        description: item['description'],
        image: item['image'],
        price: double.parse(item['price']));
  }

  static String validateEmail(String value) {
    if (value.isEmpty) {
      return 'please enter mail';
    }

    RegExp regExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regExp.hasMatch(value))
      return 'Enter Valid Email';
    else
      return '';
  }

  static String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter passowrd';
    }
    if (value.length < 8) {
      return 'Password should be more than 8 characters';
    }
    return '';
  }

  // static String conformPassword(String value, String value2) {
  //   if (!equalsIgnoreCase(value, value2)) return 'Conform password invalid';
  // }
}
