import 'package:flutter/material.dart';

@immutable
class BasketData {
  String image;
  final String productName;
  final String productAmount;
  final double price;


  BasketData({
    required this.image,
    required this.productName,
    required this.productAmount,
    required this.price,
  });
}
