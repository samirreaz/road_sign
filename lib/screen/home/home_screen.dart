import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/item_model.dart';
import 'package:road_sign/models/quize_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        //backgroundColor: Colors.black,
      ),
      //backgroundColor: Colors.black87,
      //!bodyb
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
                /*itemBuilder: (context, index) => InkWell(
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
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(categoris[index].categoryImg),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(color: Colors.black, width: 5),
                        color: Colors.red[400],
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 5.0,
                              offset: Offset(5, 1.0),
                              spreadRadius: 2.5),
                        ]),
                    child: Stack(
                      children: [
                        Text(
                          categoris[index].categoryName,
                          style: TextStyle(color: Colors.white, fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ), //!BoxDecoration
                  ),
                ),*/

                itemBuilder: (context, index) => GridTile(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(categoris[index].categoryImg),
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
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 25,
                  );
                },
<<<<<<< HEAD
                child: Container(
                  width: 200,
                  child: Center(
                    child: Text(
                      categoris[index].categoryName,
                      style: TextStyle(color: Colors.white, fontSize: 40),
                      textAlign: TextAlign.center,
                    ), // Text
                  ),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(color: Colors.black, width: 5),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 5.0,
                            offset: Offset(5, 1.0),
                            spreadRadius: 2.5),
                      ]), //!BoxDecoration
                ),
=======
>>>>>>> b7cac7c71850c0eee20c853844b1e2493b0455f7
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 30,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ), //!divider

          //*Second Column Part

          Flexible(
            flex: 4,
            //! it's category Random Item list.
            child: ListView.separated(
              itemCount: quizeList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.green,
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
                        "According to the guidelines issued by the ministry, each Good Samaritan would also receive a certificate of appreciation besides ₹5,000 in cash for saving a road accident victim",
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
