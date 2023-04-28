import 'package:flutter/material.dart';

@immutable
class CategoryTitleData {
  final String image;
  final String categoryName;

  const CategoryTitleData({
    required this.image,
    required this.categoryName,

  });
}

@immutable
class CategoryProductData{
  final String image;
  final String categoryName;
  final String productName;
  final double price;
  final double oldPrice;

  const CategoryProductData({
    required this.image,
    required this.categoryName,
    required this.productName,
    required this.price,
    required this.oldPrice,

  });
}