import 'package:flutter/material.dart';

class NewsModel {
  final String newsTitle;
  final String newsDetails;
  final String newsImg;

  NewsModel({
    required this.newsTitle,
    required this.newsDetails,
    required this.newsImg,
  });
}

List<NewsModel> news_list = [
  NewsModel(
      newsTitle: 'Why Road Accidents Occur',
      newsDetails:
          'Accidents usually take place due to big potholes or damaged roads, lack of soiling, muddy and narrow roads, and the absence of road signs, traffic lights, or speed breakers.',
      newsImg: 'assets/images/'),
  NewsModel(
    newsTitle: 'Biggest Road Accident',
    newsDetails:
        'Interstate 35 in San Antonio, Texas, United States, 127 car pile-up caused by blinding glare and rain-slicked roads, 67 injuries.',
    newsImg: 'assets/images/',
  ),
  NewsModel(
    newsTitle: 'how many car crashes happen every year',
    newsDetails:
        'According to the National Highway Traffic Administration, car accidents happen every 60 seconds. That equates to about 5.25 million accidents across the nation on a yearly basis.',
    newsImg: 'assets/images/',
  ),
];
