import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/item_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            // it's category List
            child: ListView.separated(
              itemCount: categoris.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(
                        selectedCategory: categoris[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 10,
                  child: Center(
                    child: Text(
                      categoris[index].categoryName,
                      style: TextStyle(color: Colors.black, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Text
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(color: Colors.black, width: 5),
                      color: Colors.tealAccent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.redAccent,
                          blurRadius: 15.0,
                          offset: Offset(3, 7.0),
                        ),
                      ]), //BoxDecoration
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 25,
                );
              },
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 50,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ), //divider

          //Second Column Part
          Flexible(
            flex: 4,
            // it's category Random Item list.
            child: Center(
              child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Column(
                        children: [
                          Card(
                            child: Center(
                              child: Container(
                                child: Text(
                                  items[index].itemName,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                  textAlign: TextAlign.center,
                                ), //Text
                                height: 40,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(29),
                                    ),
                                    color: Colors.blue[300],
                                    gradient: LinearGradient(colors: [
                                      Colors.cyan,
                                      Colors.yellow
                                    ])), //Decoration
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
