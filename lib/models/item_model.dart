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
  //!TrafficLights
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
      itemImg: 'assets/images/yellow_light.png'),

//!Road Symbols
  ItemModel(
      itemName: 'U-Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/u_turn.png'),
  ItemModel(
      itemName: 'No Right Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/no_right_turn.png'),

  ItemModel(
      itemName: 'No Left Turn',
      category: 'Road Symbols',
      itemImg: 'assets/images/no_left_turn.png'),
  ItemModel(
      itemName: 'Turn Right ahead',
      category: 'Road Symbols',
      itemImg: 'assets/images/turn_right.png'),
  //?Road Symbols
  //! Important Road Signs
  ItemModel(
      itemName: 'Road Works',
      category: 'Important Road Signs',
      itemImg: 'assets/images/road_works.png'),
  ItemModel(
      itemName: 'Traffic Stops',
      category: 'Important Road Signs',
      itemImg: 'assets/images/traffic_stops.png'),
  //? Important road signs
  //!Road signals and Safety
  ItemModel(
      itemName: 'Road is Blocked',
      category: 'Road signals and Safety',
      itemImg: 'assets/images/road_blocked.png'),
  ItemModel(
      itemName: 'Speed Limit',
      category: 'Road signals and Safety',
      itemImg: 'assets/images/speed_limit.png'),
  //? Road signals and Safety

//!Types of Vehicles
  ItemModel(
      itemName: 'Sedan',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/seadn.png'),
  ItemModel(
      itemName: 'Coupe',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/coupe.png'),
  ItemModel(
      itemName: 'Convertible',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/convertible.jpg'),
  ItemModel(
      itemName: 'Sports Car',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/fersports_car.png'),
  ItemModel(
      itemName: 'Hatchback',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/hatchback.png'),
  ItemModel(
      itemName: 'Mini-Ban',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/miniban.jpg'),
  ItemModel(
      itemName: 'Pick_Up Truck',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/pickup_truck.jpg'),
  ItemModel(
      itemName: 'Station Wagon',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/station_wagon.png'),
];
