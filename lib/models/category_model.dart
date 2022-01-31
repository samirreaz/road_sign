import 'package:flutter/cupertino.dart';

class CategoryModel {
  final String categoryName;
  final String categoryImg;

  CategoryModel({required this.categoryName, required this.categoryImg});
}

List<CategoryModel> categoris = [
  CategoryModel(categoryName: 'Light', categoryImg: 'categoryImg'),
  CategoryModel(categoryName: 'Road Symbols', categoryImg: 'categoryImg'),
  CategoryModel(categoryName: 'Signals', categoryImg: 'categoryImg'),
  CategoryModel(categoryName: 'Boards', categoryImg: 'categoryImg'),
  CategoryModel(categoryName: 'Notice', categoryImg: 'categoryImg'),
];
