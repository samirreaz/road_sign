//! this page shows the selected category.
//! select from the home_screen.

import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.selectedCategory})
      : super(key: key);
  final CategoryModel selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory.name),
      ),
    );
  }
}
