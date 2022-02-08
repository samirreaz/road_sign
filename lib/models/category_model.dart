import 'package:flutter/cupertino.dart';

class CategoryModel {
  final String categoryName;
  final String categoryImg;

  CategoryModel({required this.categoryName, required this.categoryImg});
}

List<CategoryModel> categoris = [
  CategoryModel(
    categoryName: 'Traffic Lights',
    categoryImg: 'assets/images/traffic-light-gdcf636228_640.jpg',
  ),
  CategoryModel(
    categoryName: 'Road Symbols',
    categoryImg: 'assets/images/pexels-caleb-oquendo-3162065.jpg',
  ),
  CategoryModel(
    categoryName: 'Traffic Signals',
    categoryImg: 'assets/images/tarffic signals.png',
  ),
  CategoryModel(
    categoryName: 'Notice',
    categoryImg: 'assets/images/board signals.jpg',
  ),
];
