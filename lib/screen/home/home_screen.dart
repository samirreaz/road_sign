import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  color: Colors.white,
                  width: 200,
                  child: Text(categoris[index].name),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Expanded(
            flex: 4,
            // it's category Random Item list.
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    height: 200,
                    color: Colors.green,
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
