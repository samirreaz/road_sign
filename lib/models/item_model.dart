class ItemModel {
  final String itemName;
  final String category;
  final String itemImg;
  final String? details;

  ItemModel({
    required this.itemName,
    required this.category,
    required this.itemImg,
    this.details,
  });
}

List<ItemModel> items = [
  ItemModel(itemName: 'Green Light', category: 'light', itemImg: 'itemImg'),
  ItemModel(itemName: 'Uturn', category: 'sign', itemImg: 'itemImg'),
  ItemModel(itemName: 'Red Light', category: 'light', itemImg: 'itemImg'),
  ItemModel(itemName: 'Yellow Light', category: 'light', itemImg: 'itemImg'),
];
