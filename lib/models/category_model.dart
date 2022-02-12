class CategoryModel {
  final String categoryName;
  final String categoryImg;

  CategoryModel({required this.categoryName, required this.categoryImg});
}

List<CategoryModel> categoris = [
  CategoryModel(
    categoryName: 'Types of Vehicles',
    categoryImg: 'assets/images/deposicar_types.jpg',
  ),
  CategoryModel(
    categoryName: 'Traffic Lights',
    categoryImg: 'assets/images/allLights.jpg',
  ),
  CategoryModel(
    categoryName: 'Road Symbols',
    categoryImg: 'assets/images/',
  ),
  CategoryModel(
    categoryName: 'Traffic Signals',
    categoryImg: 'assets/images/',
  ),
  CategoryModel(
    categoryName: 'Notice',
    categoryImg: 'assets/images/',
  ),
];
