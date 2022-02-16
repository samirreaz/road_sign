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
      newsTitle: 'Why Accident Happens?',
      newsDetails:
          'Road accidents occur for a variety of reasons. Often, drivers are distracted while behind the wheel, taking their focus away from the road. ... Sometimes, accidents occur for a combination of reasons, from bad visibility to unsafe road design, or other drivers lack caution.',
      newsImg: 'assets/images/car-accident-g60a39f616_640.png'),
  NewsModel(
    newsTitle: 'Biggest Road Accident',
    newsDetails:
        'Interstate 35 in San Antonio, Texas, United States, 127 car pile-up caused by blinding glare and rain-slicked roads, 67 injuries.',
    newsImg: 'assets/images/big_accident.jpg',
  ),
  NewsModel(
    newsTitle: 'Everyday road Accidents',
    newsDetails:
        'According to the National Highway Traffic Administration, car accidents happen every 60 seconds. That equates to about 5.25 million accidents across the nation on a yearly basis.',
    newsImg: 'assets/images/daily_accidents.jpg',
  ),
];
