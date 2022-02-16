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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          title: Text(
            selectedCategory.categoryName,
            style: TextStyle(fontSize: 25),
          ),
          elevation: 10,
          shadowColor: Color(0xff3f51b5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffbf360c),
        ),
      ),
      backgroundColor: Color(0xffffbb93),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: filterList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 3),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(filterList[index].itemImg),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                filterList[index].itemName,
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  filterList[index].details ?? '',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
