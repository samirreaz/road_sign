import 'package:flutter/material.dart';
import 'package:road_sign/models/news_model.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({
    Key? key,
    required this.news,
  }) : super(
          key: key,
        );

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          news.newsTitle,
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xff3f51b5),
      ),
      backgroundColor: Color(0xffc5cae9),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Image(
                  image: AssetImage(news.newsImg),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 3),
                    color: Color(0xffe2f1f8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      news.newsDetails,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
