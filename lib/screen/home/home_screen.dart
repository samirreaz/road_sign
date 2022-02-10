import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/quize_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Home Page'),
        //backgroundColor: Colors.black,
      ),
      //backgroundColor: Colors.black87,
      //!body
      body: Column(
        children: [
          Expanded(
            flex: 2,
            //! it's category List
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: categoris.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GridTile(
                  child: InkWell(
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
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(categoris[index].categoryImg),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 2,
                              spreadRadius: 3,
                              offset: Offset(
                                3.0, // Move to right 10  horizontally
                                2.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 25,
                  );
                },
              ),
            ),
          ),
          //!divider

          //*Second Column Part

          Flexible(
            flex: 4,
            //! it's category Random Item list.
            child: ListView.separated(
              itemCount: quizeList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.white10,
                  height: 200,
                  child: Column(
                    children: [
                      Flexible(
                        child: Image(
                          image: NetworkImage(
                              'https://images.hindustantimes.com/img/2021/10/06/1600x900/08065ecc-26df-11ec-97ad-def1feb12b09_1633550216966.jpg'),
                        ),
                      ),
                      Text(
                        "For 2016 specifically, National Highway Traffic Safety Administration (NHTSA) data shows 37,461 people were killed in 34,436 motor vehicle crashes, an average of 102 per day.",
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
