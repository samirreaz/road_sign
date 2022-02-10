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
    newsTitle: 'newsTitle',
    newsDetails: 'newsDetails',
    newsImg: 'newsImg',
  ),
  NewsModel(
    newsTitle: 'newsTitle',
    newsDetails: 'newsDetails',
    newsImg: 'newsImg',
  ),
  NewsModel(
    newsTitle: 'newsTitle',
    newsDetails: 'newsDetails',
    newsImg: 'newsImg',
  ),
  NewsModel(
    newsTitle: 'newsTitle',
    newsDetails: 'newsDetails',
    newsImg: 'newsImg',
  ),
];
