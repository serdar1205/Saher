import 'package:flutter/material.dart';

@immutable
class ProductData {
   String image;
  final String productName;
  final double price;
  final bool stock;

  ProductData({
    required this.image,
    required this.productName,
    required this.price,
    required this.stock,
  });
}
