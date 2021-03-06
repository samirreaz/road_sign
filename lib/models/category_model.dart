import 'package:flutter/cupertino.dart';

class CategoryModel {
  final String categoryName;
  final String categoryImg;

  CategoryModel({required this.categoryName, required this.categoryImg});
}

List<CategoryModel> categoris = [
  CategoryModel(
    categoryName: ' Traffic Lights',
    categoryImg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE6Y4lbVxphIqkvHZz0rZcgoZgV1gtqi7j-g&usqp=CAU',
  ),
  CategoryModel(
    categoryName: 'Road Symbols',
    categoryImg:
        'https://png.vector.me/files/images/1/5/158725/road_signs_traffic_light.jpg',
  ),
  CategoryModel(
    categoryName: 'Traffic Signals',
    categoryImg:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR51aNQXobMwYk9wZ4rZnecr0AASclMeQP57g&usqp=CAU',
  ),
  CategoryModel(
    categoryName: 'Notice',
    categoryImg:
        'https://images.clipartlogo.com/files/images/36/367995/road-traffic-signs-clip-art_p.jpg',
  ),
];
