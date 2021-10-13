import 'package:flutter/material.dart';
import 'package:homework2/mainpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  "images/tanjir-ahmed-chowdhury-7hiORdEkWB8-unsplash.jpg"),
              Container(
                  child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainpage()));
                },
                child: Text("Enter"),
              )),

            ],
          ),
        ),
      ),
    );
  }
}
