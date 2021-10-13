import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            DropdownButtonFormField(

              hint: Text("Menu"),
                items: [

              DropdownMenuItem(child: Text("Male"),
                value: 'Sohag Chand',
              ),
              DropdownMenuItem(child: Text("Female"),
                value: 'tomake chara bacbo na',
              ),

            ],
              onChanged: (val){
                setState(() {
                  print(val);

                });
              },
            )
          ],
        ),
      ),
    );
  }
}
