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
//!Types of Vehicles
  ItemModel(
    itemName: 'Sedan',
    category: 'Types of Vehicles',
    itemImg: 'assets/images/seadn.png',
    details:
        "A sedan has four doors and a traditional trunk. Like vehicles in many categories, they're available in a range of sizes from small (subcompact vehicles like Nissan Versa and Kia Rio) to compacts (Honda Civic, Toyota Corolla) to mid-size (Honda Accord, Nissan Altima), and full-size (Toyota Avalon, Dodge Charger).",
  ),
  ItemModel(
    itemName: 'Coupe',
    category: 'Types of Vehicles',
    itemImg: 'assets/images/coupe.png',
    details:
        "A coupe has historically been considered a two-door car with a trunk and a solid roof. This would include cars like a Ford Mustang or Audi A5—or even two-seat sports cars like the Chevrolet Corvette and Porsche Boxster. ",
  ),
  ItemModel(
      itemName: 'SPORT-UTILITY VEHICLE (SUV)',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/suv_car.jpg',
      details:
          "SUVs—often also referred to as crossovers—tend to be taller and boxier than sedans, offer an elevated seating position, and have more ground clearance than a car."),
  ItemModel(
    itemName: 'Convertible',
    category: 'Types of Vehicles',
    itemImg: 'assets/images/convertible.jpg',
    details:
        "Does the roof retract into the body leaving the passenger cabin open to the elements? If so, it's a convertible. Most convertibles have a fully powered fabric roof that folds down, but a few have to be lowered by hand.",
  ),
  ItemModel(
    itemName: 'Sports Car',
    category: 'Types of Vehicles',
    itemImg: 'assets/images/fersports_car.png',
    details:
        "A sports car is a car designed with an emphasis on dynamic performance, such as handling, acceleration, top speed, or thrill of driving. Sports cars originated in Europe in the early 1900s and are currently produced by many manufacturers around the world.",
  ),
  ItemModel(
      itemName: 'Hatchback',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/hatchback.png',
      details:
          "Traditionally, the term 'hatchback' has meant a compact or subcompact sedan with a squared-off roof and a rear flip-up hatch door that provides access to the vehicle's cargo area instead of a conventional trunk."),
  ItemModel(
      itemName: 'Mini-Ban',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/miniban.jpg',
      details:
          "Minivans are the workhorses of the family-car world, the best at carrying people and cargo in an efficient package."),
  ItemModel(
    itemName: 'Pick_Up Truck',
    category: 'Types of Vehicles',
    itemImg: 'assets/images/pickup_truck.jpg',
    details:
        "A pickup truck has a passenger cab and an open cargo bed in the rear. Virtually all pickups offer some form of all-wheel drive or part-time four-wheel drive—the latter for off-road use only.",
  ),
  ItemModel(
      itemName: 'Station Wagon',
      category: 'Types of Vehicles',
      itemImg: 'assets/images/station_wagon.png',
      details:
          "Wagons are similar to sedans but have an extended roofline and a hatch door at the rear instead of a trunk."),

  //? Types of Cars

  //!TrafficLights
  ItemModel(
      itemName: 'Green Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/green_light.png',
      details:
          'GREEN — A green signal lignt means you may go on if the way is clear.'),

  ItemModel(
      itemName: 'Red Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/red_light.png',
      details: 'RED — A red signal light means STOP.'),

  ItemModel(
      itemName: 'Yellow Light',
      category: 'Traffic Lights',
      itemImg: 'assets/images/yellow_light.jpg',
      details:
          'Yellow — A yellow signal light means that a red light is soon to follow.'),

  //? Traffic Lights

  //!Road Guide Signs
  ItemModel(
    itemName: 'Stop Ahead Sign',
    category: 'Road Sign Encyclopedia',
    itemImg: 'assets/images/stop_sign.jpg',
    details:
        "STOP sign indicates that you must make a full STOP whenever you see this sign.",
  ),
  ItemModel(
    itemName: 'Road Merging Sign',
    category: 'Road Sign Encyclopedia',
    itemImg: 'assets/images/merging_sign.jpg',
    details:
        "The merge sign is a regulatory sign. Drivers who encounter a merge sign are warned that two separate roadways will converge into one lane ahead.",
  ),
  ItemModel(
      itemName: 'Turn Right ahead',
      category: 'Road Sign Encyclopedia',
      itemImg: 'assets/images/turn_right.png',
      details:
          'Turn Right Ahead. This traffic sign indicates that all drivers must turn right, other directions are not allowed.'),
  ItemModel(
      itemName: 'Turn Left ahead',
      category: 'Road Sign Encyclopedia',
      itemImg: 'assets/images/turn_left.jpg',
      details:
          'Turn Left Ahead. This traffic sign indicates that all drivers must turn left, other directions are not allowed.'),

  ItemModel(
      itemName: 'No Right Turn',
      category: 'Road Sign Encyclopedia',
      itemImg: 'assets/images/no_right_turn.png',
      details:
          'The no right turn sign is a turn prohibition sign that is designed to prevent an accident from occurring by informing drivers that turning right is prohibited.'),

  ItemModel(
      itemName: 'No Left Turn',
      category: 'Road Sign Encyclopedia',
      itemImg: 'assets/images/no_left_turn.png',
      details:
          'The no left turn sign is a turn prohibition sign that is designed to prevent an accident from occurring by informing drivers that turning left is prohibited.'),
  ItemModel(
    itemName: 'U-Turn',
    category: 'Road Sign Encyclopedia',
    itemImg: 'assets/images/u_turn.png',
    details:
        'U-turn in driving refers to performing a 180° rotation to reverse the direction of travel.',
  ),
  ItemModel(
    itemName: 'Narrow Road Ahead',
    category: 'Road Sign Encyclopedia',
    itemImg: 'assets/images/narrow_road.jpg',
    details:
        "This sign cautions the driver to be careful as the road ahead is narrow.",
  ),

  //? Road Guide Signs

  //! Important Road Signs
  ItemModel(
      itemName: 'School Children Crossing',
      category: 'Important Road Signs',
      itemImg: 'assets/images/school_sign.jpg',
      details:
          'School crossing signs are meant to warn drivers that they are approaching a crossing where school children cross the roadway.'),
  ItemModel(
    itemName: 'Zebra Crossing Sign',
    category: 'Important Road Signs',
    itemImg: 'assets/images/crossing_sign.jpg',
    details:
        "Sign warns road users that they are approaching a Zebra crossing and should be prepared to stop if necessary.",
  ),

  ItemModel(
      itemName: 'Road Under Constructions',
      category: 'Important Road Signs',
      itemImg: 'assets/images/under_construction.jpg',
      details:
          'Construction signs are used to alert motorists to the dangers that new or temporary construction poses and how to maintain reasonable safety on both highways and roads.'),
  ItemModel(
      itemName: 'No Horn Sign',
      category: 'Important Road Signs',
      itemImg: 'assets/images/no_horn.png',
      details:
          'No sound horn signal symbolizes not to make a horn in a specified area. This traffic symbol is used in order to avoid noises in the public zone so as to keep the measures of road safety. Mostly school or hospital areas are no horn areas'),
  //? Important road signs

  //!Road Signs and Safety
  ItemModel(
      itemName: 'Road is Closed',
      category: 'Road Signs and Safety',
      itemImg: 'assets/images/road_closed.jpg',
      details:
          "When there's a 'road closed' sign posted at an intersection, it means the road is closed."),
  ItemModel(
      itemName: 'No Trucks Allowed',
      category: 'Road Signs and Safety',
      itemImg: 'assets/images/no_trucks.png',
      details:
          "Truck Traffic Signs alert drivers of large motor vehicles approaching, therefore everyone must utilize caution."),
  ItemModel(
      itemName: 'Dead End',
      category: 'Road Signs and Safety',
      itemImg: 'assets/images/dead_end.jpg',
      details:
          "The dead end sign is a warning sign. Dead end signs are posted at the entrance of a road or street to let the driver know the path they are on ends in a dead end or cul-de-sac."),

  //? Road signals and Safety
];
