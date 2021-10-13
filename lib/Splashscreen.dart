import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homework2/Homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 1),
      () => Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Homepage()), (route) => true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to Cox's Bazar",
                style: TextStyle(color: Colors.teal,fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
