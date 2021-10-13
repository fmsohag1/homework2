import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homework2/checkbox.dart';
import 'package:homework2/faisal.dart';
import 'package:homework2/newpage.dart';
import 'package:homework2/sohag.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  /*final GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();

  _showSnackbar(){
    var _mySnackbar=SnackBar(content: Text("SnackBar"));
    _globalKey.currentState!.showSnackBar(_mySnackbar);
  }*/



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cox's Bazar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: RaisedButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("I love you"),
                      ),
                      ListTile(
                        title: Text("I love you"),
                      )
                    ],
                  ),
                )
                );
            });
            //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("I love you")));
          },child: Text("ShowModalBottom"),)),
          Center(child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>newpage()));

            /*Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 20.0
            );*/
          },child: Text("DropDown"),)),
          Center(child: RaisedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(
                child: Stack(
                 clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Alert",style: TextStyle(fontSize: 20),),
                            SizedBox(height: 20,),
                            Text("This is Alert Dialog",style: TextStyle(fontSize: 25),),
                            CircleAvatar(
                              child: GestureDetector(
                                child: Hero(tag: "tag", child: Icon(Icons.add,size: 30,)
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>faisal()));
                                },
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    Positioned( top: -50,
                        right: 80,
                        child: CircleAvatar(maxRadius: 40,
                        backgroundColor: Colors.teal,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          child: Image.asset("images/tanjir-ahmed-chowdhury-7hiORdEkWB8-unsplash.jpg"),
                        ),
                        /*child: Icon(Icons.account_circle,size: 100,color: Colors.white,)*/
                            
                            ))

                  ],
                ),

              );
            });
          },child: Text("ShowDialog"),)),
          Center(child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>sohag()));

            /*Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 20.0
            );*/
          },child: Text("SliversAppBar"),)),
          Center(child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>faisal()));

            /*Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 20.0
            );*/
          },child: Text("Slider"),)),
          Center(child: RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>checkbox()));

            /*Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                fontSize: 20.0
            );*/
          },child: Text("CheckBox"),)),
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                  end: Alignment.bottomRight,
                tileMode: TileMode.repeated,
                  colors: [Colors.red,Colors.green,Colors.pink])
            ),
          )
        ],
      ),
    );
  }
}
