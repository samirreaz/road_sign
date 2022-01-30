import 'package:flutter/cupertino.dart';

class SignModel {
  final String signName;
  final String category;
  final String itemImg;

  SignModel({
    required this.signName,
    required this.category,
    required this.itemImg,
  });
}

List<SignModel> Signitems = [
  SignModel(signName: 'redlight', category: 'Signal', itemImg: 'itemImg'),
  SignModel(signName: 'signName', category: 'category', itemImg: 'itemImg'),
  SignModel(signName: 'signName', category: 'category', itemImg: 'itemImg'),
  SignModel(signName: 'signName', category: 'category', itemImg: 'itemImg')
];
