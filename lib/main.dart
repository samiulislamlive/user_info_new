import 'package:flutter/material.dart';
import 'package:userinfosaving/screens/login.dart';
import 'package:userinfosaving/screens/signup.dart';
import 'package:userinfosaving/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

