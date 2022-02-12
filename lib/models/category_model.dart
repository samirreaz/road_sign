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
    categoryImg: 'assets/images/roadSymbol.jpg',
  ),
  CategoryModel(
    categoryName: 'Important Road Signs',
    categoryImg: 'assets/images/importan_signs.jpg',
  ),
  CategoryModel(
    categoryName: 'Road signals and Safety',
    categoryImg: 'assets/images/signs_Pedestrians.jpg',
  ),
];
