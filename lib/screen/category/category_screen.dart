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
          shadowColor: Color(0xff616161),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff303f9f),
        ),
      ),
      backgroundColor: Color(0xffd1d9ff),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: filterList.length,
          itemBuilder: (context, index) => Column(
            children: [
              //!This is the Header
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: Text(
                  filterList[index].itemName,
                  style: TextStyle(fontSize: 35, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 3),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(filterList[index].itemImg),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    filterList[index].details ?? '',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
