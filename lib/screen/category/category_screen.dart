//! this page shows the selected category.
//! select from the home_screen.

import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/item_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.selectedCategory})
      : super(key: key);
  final CategoryModel selectedCategory;

  @override
  Widget build(BuildContext context) {
    List<ItemModel> itemList = items;
    List<ItemModel> filterList = [];
    for (int i = 0; i < itemList.length; i++) {
      if (itemList[i].category == selectedCategory.categoryName) {
        filterList.add(itemList[i]);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory.categoryName),
        backgroundColor: Colors.brown[300],
      ),
      body: ListView.builder(
        itemCount: filterList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            filterList[index].itemName,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
