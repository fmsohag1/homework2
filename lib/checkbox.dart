import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {

  bool _value=false;
  bool _val=false;
  bool _check=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(_value==false?"0":"1",style: TextStyle(fontSize: 30),)),
            Checkbox( checkColor: Colors.pink,
                activeColor: Colors.amber, value: _value, onChanged: (val){
              setState(() {
                _value=val!;
                print(_value);
              });
            }),
            Dismissible(
              background: Container(
                color: Colors.pink,
                child: Icon(Icons.home),
              ),
                secondaryBackground: Container(
                  color: Colors.amberAccent,
                  child: Icon(Icons.delete),
                ),
                key: ValueKey("Value"), child: ListTile(
              title: Text("SOhag"),
              subtitle: Text("I love you"),
              leading: Icon(Icons.add),
              tileColor: Colors.teal,

            )),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              color: _val==false?Colors.amberAccent:Colors.pink,
              child: Switch(value: _val, onChanged: (vol){
                setState(() {
                  _val=vol;
                });
              })
            ),
            SizedBox(height: 20,),
            AnimatedCrossFade(
                firstChild: Container(
                  height: 30,
                  width: 100,
                  color: Colors.amber,
                  child: RaisedButton(onPressed: (){
                    setState(() {
                      _check=false;
                    });
                  },child: Text("Button"),),
                ),
                secondChild: Container(
                  height: 200,
                  width: 300,
                  color: Colors.orangeAccent,
                  child: Image.asset("images/tanjir-ahmed-chowdhury-7hiORdEkWB8"
                      "-unsplash.jpg")
                ),
                crossFadeState: _check?CrossFadeState.showFirst:
                CrossFadeState.showSecond,
                duration: Duration(seconds: 3)),
            SizedBox(height: 10,),
            ExpansionTile(
              title: Text("Icons"),
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 80,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.ten_k)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.nine_k)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.eight_k)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.seven_k)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.six_k)),
                    ],
                  ),
                ),
              ],

            )
          ],
        ),
      ),

    );
  }
}
