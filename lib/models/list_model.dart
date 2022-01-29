import 'package:flutter/cupertino.dart';

class SignModel {
  late String signName;
  late String category;
  late String itemImg;

  SignModel({
    required this.signName,
    required this.category,

    // })
  });
}

late String signName;
late String signCategory;
late String itemImg;

List<SignModel> items = [
  SignModel(signName: ('Stops'), category: 'Signals'),
  SignModel(signName: ('Lights and Signs'), category: 'Lights'),
  SignModel(signName: ('Green Lights'), category: 'Traffic'),
  SignModel(signName: ('Red Lights'), category: 'Signs')
];
