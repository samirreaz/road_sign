class CategoryModel {
  final String categoryName;
  final String categoryImg;

  CategoryModel({required this.categoryName, required this.categoryImg});
}

List<CategoryModel> categoris = [
  CategoryModel(
    categoryName: 'Traffic Lights',
    categoryImg: 'assets/images/all_lights.png',
  ),
  CategoryModel(
    categoryName: 'Types of Car',
    categoryName: 'Road Symbols',
    categoryImg: 'assets/images/traffic_stops.png',
  ),
  CategoryModel(
    categoryName: 'Traffic Signals',
    categoryImg: 'assets/images/tarffic signals.png',
  ),
  CategoryModel(
    categoryName: 'Notice',
    categoryImg: 'assets/images/road_blocked.jpg',
  ),
];
