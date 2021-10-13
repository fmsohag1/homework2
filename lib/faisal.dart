import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class faisal extends StatefulWidget {
  const faisal({Key? key}) : super(key: key);

  @override
  State<faisal> createState() => _faisalState();
}

class _faisalState extends State<faisal> {

  var _value=40.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: _value,
            ),
            Text("Slider",style: TextStyle(fontSize: _value),),
            Slider(
              thumbColor: Colors.teal,
              activeColor: Colors.green,
              inactiveColor: Colors.pink,
              divisions: 30,

              min: 30,
                max: 50,
                value: _value, onChanged: (value){
              setState(() {
                _value=value;
              });
            })
          ],
        ),
      ),
    );
  }
}
