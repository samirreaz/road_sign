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
        title: Text(news.newsTitle),
        backgroundColor: Colors.brown[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage(news.newsImg)),
            Text(
              news.newsDetails,
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
