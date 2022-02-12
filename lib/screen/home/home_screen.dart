import 'package:flutter/material.dart';
import 'package:road_sign/models/category_model.dart';
import 'package:road_sign/models/news_model.dart';
import 'package:road_sign/models/quize_model.dart';
import 'package:road_sign/screen/category/category_screen.dart';
import 'package:road_sign/screen/news/news_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Home Page'),
        backgroundColor: Colors.brown[300],
      ),
      backgroundColor: Colors.white,
      //!body
      body: Column(
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
    );
  }
}

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
                      color: Colors.black12, blurRadius: 2, spreadRadius: 2)
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
                            fit: BoxFit.cover)),
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
                          'News Title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "For 2016 specifically, National Highway Traffic Safety Administration (NHTSA) data shows 37,461 people were killed in 34,436 motor vehicle crashes, an average of 102 per day.",
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
                  height: 25.0,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Text(
                      categoris[index].categoryName,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 21, color: Colors.black),
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
