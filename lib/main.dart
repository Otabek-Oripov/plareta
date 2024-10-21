import 'package:flutter/material.dart';
import 'package:myapp/signinpage.dart';
import 'package:myapp/signup.dart';
import 'package:myapp/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:View1(),
      routes: {
        View1.id: (context) => View1(),
        MyWidget.id: (context) => MyWidget(),
        SignInPage.id: (context) => SignInPage(),


      },
    );
  }
}


