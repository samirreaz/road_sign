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
  ItemModel(itemName: 'Green Light', category: 'Light', itemImg: 'itemImg'),
  ItemModel(itemName: 'Red Light', category: 'Light', itemImg: 'itemImg'),
  ItemModel(itemName: 'Yellow Light', category: 'Light', itemImg: 'itemImg'),
  ItemModel(itemName: 'U-Turn', category: 'Road Symbols', itemImg: 'itemImg'),
  ItemModel(
      itemName: 'No Left Turn', category: 'Road Symbols', itemImg: 'itemImg'),
  ItemModel(
      itemName: 'No Right Turn', category: 'Road Symbols', itemImg: 'itemImg'),
  ItemModel(
      itemName: 'Turn Right ahead',
      category: 'Road Symbols',
      itemImg: 'itemImg'),
  ItemModel(itemName: 'Road Works', category: 'Signals', itemImg: 'itemImg'),
  ItemModel(itemName: 'Traffic Stops', category: 'Signals', itemImg: 'itemImg'),
  ItemModel(
      itemName: 'Road is Blocked', category: 'Boards', itemImg: 'itemImg'),
  ItemModel(itemName: 'Distance', category: 'Boards', itemImg: 'itemImg'),
];
