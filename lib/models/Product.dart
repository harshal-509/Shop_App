import 'package:flutter/foundation.dart';
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageurl;
  bool isfavorite;

  Product(
      {@required this.id,
      @required this.description,
      @required this.imageurl,
      this.isfavorite=false,
      @required this.price,
      @required this.title});
}
