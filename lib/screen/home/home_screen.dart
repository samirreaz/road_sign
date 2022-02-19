import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/news_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';
import 'package:road_sign/screen/extra_screen/about.dart';
import 'package:road_sign/screen/news/news_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          title: Text(
            'Road Signals 🚖',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff3f51b5),
          elevation: 10,
          shadowColor: Color(0xff3f51b5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
      ),

      backgroundColor: Color(0xffc5cae9),
      //!body
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              //! it's category List
              child: CategoryWidget(),
            ),

            //!Second Column Part

            Flexible(
              flex: 4,
              //! it's news list.
              child: NewsListWidget(),
            ),
          ],
        ),
      ),

      endDrawer: MyDrawer(),

      // bottomNavigationBar: CurvedNavigationBar();
    );
    return scaffold;
  }
}

var textStyle = TextStyle(color: Colors.black, fontSize: 18);

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffefebe9),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Types of Vehicles',
                style: textStyle,
              ),
              leading: Icon(Icons.car_rental),
              trailing: Icon(
                Icons.arrow_right,
                size: 34,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                      selectedCategory: categoris[0],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Traffic Lights',
                style: textStyle,
              ),
              leading: Icon(Icons.traffic),
              trailing: Icon(
                Icons.arrow_right,
                size: 34,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                      selectedCategory: categoris[1],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Road Sign Encyclopedia',
                style: textStyle,
              ),
              leading: Icon(Icons.add_road),
              trailing: Icon(Icons.arrow_right, size: 34),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                      selectedCategory: categoris[2],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Street Signs',
                style: textStyle,
              ),
              leading: Icon(Icons.label_important_outline_rounded),
              trailing: Icon(
                Icons.arrow_right,
                size: 34,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                      selectedCategory: categoris[3],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Road Signs and Safety',
                style: textStyle,
              ),
              leading: Icon(Icons.safety_divider),
              trailing: Icon(
                Icons.arrow_right,
                size: 34,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                      selectedCategory: categoris[4],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'About',
                style: textStyle,
              ),
              leading: Icon(Icons.face),
              trailing: Icon(
                Icons.arrow_right,
                size: 34,
              ),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: await (context) => About_App()),
                );
              },
            ),
            IconButton(
              onPressed: () {
                exit(0);
              },
              iconSize: 45,
              icon: Icon(Icons.logout_rounded),
              tooltip: 'Close this App',
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.separated(
        itemCount: news_list.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsScreen(
                      news: news_list[index],
                    ),
                  ));
            },
            child: Container(
              height: 200,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 5, spreadRadius: 5)
                  ]),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage(news_list[index].newsImg),
                              fit: BoxFit.fitWidth)),
                      width: double.maxFinite,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            news_list[index].newsTitle,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            news_list[index].newsDetails,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
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
              margin: EdgeInsets.only(
                bottom: 10,
                top: 10,
                left: 15,
              ),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(categoris[index].categoryImg),
                    fit: BoxFit.fitHeight,
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
              //!Bottom Text
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(
                  width: 200.0,
                  height: 22.0,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Colors.grey[300],
                    ),
                    child: Text(
                      categoris[index].categoryName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
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
    );
  }
}
