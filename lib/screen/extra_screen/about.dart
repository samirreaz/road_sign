import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:road_sign/screen/home/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

var defultText = TextStyle(color: Color(0xfff5f5f5), fontSize: 25);
var linkText = TextStyle(color: Color(0xff2196f3), fontSize: 25);

class About_App extends StatelessWidget {
  const About_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff546e7a),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff424242),
              ),
              height: 340,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: CircleAvatar(
                      maxRadius: 120,
                      backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C5603AQEzw6Dk3IPgHA/profile-displayphoto-shrink_800_800/0/1608714667178?e=1650499200&v=beta&t=LOwP7T4YXz7as8iYcmzjrtdBcAVMBUN5hGSkSgSDl-8'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Abir Hasnat',
                      style: TextStyle(
                        color: Color(0xffe1f5fe),
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, right: 24),
                child: Text(
                  'Road_Sign App' + '\n Version: 1.00',
                  style: defultText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Click here, for more informations:-',
                            style: defultText),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  child: Text(
                    'GitHub',
                    style: linkText,
                  ),
                  onTap: () {
                    launch('https://github.com/abirhasnat95');
                  },
                ),
              ),
              InkWell(
                child: Text(
                  'LinkedIn',
                  style: linkText,
                ),
                onTap: () {
                  launch('https://www.linkedin.com/in/abirhasnat95/');
                },
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 68.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    iconSize: 85,
                    color: Color(0xfff5f5f5),
                    icon: Icon(Icons.home),
                  )
                ],
              ),
            )
          ],
        ));
  }

  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
