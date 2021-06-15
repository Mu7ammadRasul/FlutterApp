import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'Myapp.dart';
void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,
title: "Appliction",
 home:FormTxt()));
=======

void main() => runApp(
    MaterialApp(home:Home(),
  debugShowCheckedModeBanner: false,   
  title: 'we can do more :)'  
  ));
  
  class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeScreen();
  }

  class HomeScreen extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      drawer: Drawer(),
      body:Center(child: Container(
        height: 200,
        width: 200,
        child:Padding(padding: EdgeInsets.all(10.0),
          child: Text(
          'Hey as long as you reched here you well know that we can do things :), for more you can contact us in order to build an app for you or at least to help!!!!!!!!, you can contact me on istagram: Mu7ammad_r4sul',
           style:TextStyle(color: Colors.white, fontSize: 15.8)
        )),
        decoration:BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20)  
        )
      )   
    )
    );  
  }   
  }

   
  
>>>>>>> eddabca01ade876c250962a31fae16820a411ca8
