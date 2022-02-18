import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:road_sign/screen/home/home_screen.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    autoNavigation();
    super.initState();
  }

  void autoNavigation() async {
    // you can change delay here
    await Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f51b5),
      body: Center(
        child: SpinKitDoubleBounce(
          size: 150,
          color: Colors.black,
        ),
      ),
    );
  }
}
