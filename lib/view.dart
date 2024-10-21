import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/signup.dart';

class View1 extends StatefulWidget {
  static String id = 'View1';
  const View1({super.key});

  @override
  State<View1> createState() => _View1State();
}

class _View1State extends State<View1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, MyWidget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2627665218.
        body: Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
              image: NetworkImage(
                  "https://img.freepik.com/premium-photo/pristine-pixel-sleek-sumptuous-logo-video-creator-with-luxurious-font-colored-lens_983420-251567.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1721779200&semt=ais_user")),
          SizedBox(
            height: 200,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: Text(
              'Welcome to PLARETA',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
