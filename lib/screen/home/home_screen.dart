import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/list_model.dart';
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
                  color: Colors.green,
                  width: 200,
                  height: 10,
                  child: Text(categoris[index].categoryName), //Text
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Flexible(
            flex: 4,
            // it's category Random Item list.
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    height: 100,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Container(
                        child: Text(items[index].signName), //Text
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
