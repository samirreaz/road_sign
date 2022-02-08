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
  ItemModel(
      itemName: 'Green Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/green_light.png'),
  ItemModel(
      itemName: 'Red Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/red_light.png'),
  ItemModel(
      itemName: 'Yellow Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/yellow_light.png'), //! DOne

  ItemModel(
      itemName: 'U-Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/u_turn.png'),
  ItemModel(
      itemName: 'Turn Right ahead',
      category: 'Road Symbols',
      itemImg: 'assets/images/turn_right.png'),
  ItemModel(
      itemName: 'Road Works',
      category: 'Traffic Signals',
      itemImg: 'assets/images/road_works.png'),
  ItemModel(
      itemName: 'Traffic Stops',
      category: 'Traffic Signals',
      itemImg: 'assets/images/traffic_stops.png'),
  ItemModel(
      itemName: 'Road is Blocked',
      category: 'Notice',
      itemImg: 'assets/images/road_blocked.png'),
  ItemModel(
      itemName: 'Speed Limit',
      category: 'Notice',
      itemImg: 'assets/images/speed_limit.png'),
  ItemModel(
      itemName: 'No Left Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/no_left_turn.png'),
  ItemModel(
      itemName: 'No Right Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/no_right_turn.png'),
];
