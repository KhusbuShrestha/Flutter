import 'package:flutter/material.dart';

class Product {
  String sku;
  String name;
  double price;
  double sp;
  String image;
  String description;

  Product({
    @required this.sku,
    @required this.name,
    @required this.price,
    @required this.sp,
    @required this.image,
    this.description,
  });
}
