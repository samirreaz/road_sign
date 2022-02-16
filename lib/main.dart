import 'package:flutter/material.dart';
import 'package:road_sign/screen/loadingScreen/loadingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Road Sign',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoadingPage(),
    );
  }
}
