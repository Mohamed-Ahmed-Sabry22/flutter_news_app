import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryName;
  final Color containerColor;
  final Color textColor;
  final String q;

  const CategoryModel({
    required this.textColor,
    required this.containerColor,
    required this.categoryName,
    required this.q,
  });
}
