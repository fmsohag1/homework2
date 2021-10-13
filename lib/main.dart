import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework2/Homepage.dart';
import 'package:homework2/Splashscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
