
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Myapp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
   {
    return Myappstate();
  }
}
class Myappstate extends State<Myapp>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.white,
      //--------------drawer--------------------
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child:CircleAvatar(
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
            color: Colors.black
              ),
            ), 
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Settings"),
            )
          ],
        ) ,
      ),
      //--------------app bar--------------------
  appBar: AppBar(
    backgroundColor: Colors.black,
    toolbarHeight: 72,
    title:Text("Search"),
    //leading: IconButton( onPressed: () {},
    //icon: Icon(Icons.arrow_back_ios),),not used becoz we used drawer!!!!!!!!!!
  ),
  //-------------body---------------------
  body:
   Center(
    child:Container(
     child:Text("this is the story of how i started putting stories to flutter",
     style: TextStyle(fontSize: 27)),
     padding:EdgeInsets.all(10),
      height: 600,
      width: 450,
      decoration: BoxDecoration(
        image:DecorationImage(
        image:AssetImage("assets/1.jpg"),alignment: Alignment.topCenter,fit: BoxFit.cover),
         gradient: LinearGradient(
           colors: [Colors.orange[400], Colors.orange[600]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
         )
      ), 
       )
      ) 
    );
  }
}
//state full widget
//-----------------------------------------------
//-----------------------------------------------
//statelesswidget
class Myappslw extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
      Center(
        child:
        Text("hi flutter", 
        textDirection: TextDirection.ltr,
        style: TextStyle(color:Colors.black),
        )
      )
    )
    ;
  } 
}
//statelesswidget
//-----------------------------------------------
class CBorder extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
     return Scaffold( 
     body:Center(
      child: Container(
       height: 200,
       width: 200,
            decoration: BoxDecoration(
            color: Colors.red,
           //borderRadius: BorderRadius.all(1)
       ),
       ),
     )
     );
  } 
}
//containerBox
//-----------------------------------------------
class BoxImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          border: Border.all(
            color: Colors.red,
            width: 5
          ),
          image: DecorationImage( 
          image: AssetImage("assets/1.jpg"),fit: BoxFit.cover
         ) 
        ),
      ),
      ),
    );
  }
}
//----------------------------------------
class ColumnWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
       child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
           Container(
             height:220,
             width:500,
             decoration: BoxDecoration(
               image:DecorationImage(
                 image: AssetImage("assets/1.jpg"),fit: BoxFit.cover
                 )
             ),
           ),
           Container(
             height:220,
             width:500,
             decoration: BoxDecoration(
               image:DecorationImage(
                 image: AssetImage("assets/3.jpg"),fit: BoxFit.cover
                 )
             ),
           ),
           Container(
             height:220,
             width:500,
             decoration: BoxDecoration(
               image:DecorationImage(
                 image: AssetImage("assets/2.jpg"),fit: BoxFit.cover
                  )
            )
           )
          ]
        )
      )
    );
  }
}
//-----------------------------------------
class ButtonWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
      child:RaisedButton(onPressed: (){print("print");},
      color: Colors.blue,
      child: Text("Print",
      style: TextStyle(color:Colors.white),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        ),
      )
      )
    );
  }
}
//same for outline button!!
//same for flat button but you have to use child!!
//same for icon button!!
//same for cupertino button but it formally uses for iphone!!
//same for material button but you can use container on it!!  
//----------------------------------------
class FloatingButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body:Center(
         child: FloatingActionButton(onPressed: (){print("object");},
         child: Icon(Icons.plus_one),
         )
         )
       );
  }
  //ther is also a BackButton and CloseButton ,They are template!!
}
//-----------------------------------------
class MenuButton extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyMenuButton();
  }
}
class MyMenuButton extends State<MenuButton>
{
  String _value = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
       child:DropdownButton(
         value:_value,
         items: <DropdownMenuItem>
         [
           DropdownMenuItem(
            child:Text("Erbil"),
            value: "0",
           ),
           DropdownMenuItem(
            child:Text("Sulaimanyah"),
            value: "1",
           ),
           DropdownMenuItem(
            child:Text("duhok"),
            value: "2",
           )
          ], 
       onChanged:(value)
       {
         setState((){
           _value=value;
         });   
       }
          )
         ),
        );
  }
}
//------------------------------
class TextpaddingField extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: TextField(
          decoration: InputDecoration(
            helperText: "add your Username up here",
            hintText: "Add you User Name",
            labelText: "User Name",
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17)
            ),
          ),
        ),
      )
      ,)
    );
  }
}
//----------------------------------------

class Get_Text extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => GetText1();
}
class GetText1 extends State<Get_Text>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>
     [
         Padding(
           padding:EdgeInsets.all(27),
           child:TextField(
           decoration: InputDecoration(
            helperText:"Fill The Text feild",
            hintText:"Username",
            labelText:"Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
           )
         ),
         ),
           Padding(
           padding:EdgeInsets.all(27),
           child:TextField(
           decoration: InputDecoration(
            helperText:"Fill The Text feild",
            hintText:"Password",
            labelText:"Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
           )
         ),
         )
     ]
    )
    );
  }
}
//------------------------------------------
class TextFField extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => Myapp1();
}

class Myapp1 extends State<TextFField>
{
  TextEditingController _controller = new TextEditingController();

  String text="";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>
         [
           Padding(padding: EdgeInsets.all(10),
            child: TextField(
              controller: _controller,
             decoration: InputDecoration(
               helperText: "add your user name up here",
               hintText: "add you username",
               labelText: "Username",
               prefixIcon: Icon(Icons.person),
               suffixIcon: _controller.text != "" ? 
               IconButton(icon: Icon(Icons.clear),
                onPressed:(){
                  setState(() {
                    _controller.clear();
                  });
                }):Icon(Icons.warning),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10))
             )
           )
           ),
           CupertinoButton(child:Text("Get Text"),
           color: Colors.blue 
           , onPressed:(){
             setState(() {
               text=_controller.text.toString();
             });
           }),
           display_Text()
         ]
           )
    );
    }

    Padding display_Text()
    {
      return Padding(padding:EdgeInsets.all(10),
      child: Text(text)
      );
  } 
}
//--------------------------------------------
class FormTxt extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => FormTxt1(); 
}

class FormTxt1 extends State<FormTxt>
{
  TextEditingController _controller = new TextEditingController();
  String text="";
  var _key= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
         Form(
           key: _key,
           child: Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                helperText: "enter your fucking username",
                hintText: "enter you username",
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              validator: (String value)
              {
                if(value=="")
                {
                  return "fuck you enter something";
                }
                else if (value!="Moe")
                {
                  return "you are not the right user";
                }
              },
            ),
            ),
           ),
            CupertinoButton(
              child: Text("Submit"), 
              color:Colors.blue,
             onPressed:(){
               setState(() {
                 _key.currentState.validate();
                 text=_controller.text.toString();
               });
             }),
            _display() 
        ]
      ),
    );
  }
   Padding _display()
   {
     return Padding(padding:EdgeInsets.all(10),
     child:Text(text)
     );
   }
}// this is form textField!!!!
//--------------------------------------------------
class RadioBtn extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => RadioBtn1(); 
}

class RadioBtn1 extends State<RadioBtn>
{
  int _group_value;
  @override
  void initState() {
    super.initState();
    _group_value=0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
             Radio(value: 0,
              groupValue: _group_value,
               onChanged:(value)
               {
                 setState(() {
                   _group_value=value;
                 });
               }),
                Padding(
                 padding: EdgeInsets.all(7),
                 child:Text("male")
               ),

               Radio(value: 2,
              groupValue: _group_value,
               onChanged:(value)
               {
                 setState(() {
                   _group_value=value;
                 });
               }),
               Padding(
                 padding: EdgeInsets.all(7),
                 child:Text("female")
               )
        ],
      )
      )
    );
  }
}//this is a radio button 
//---------------------------------------------
class Chk extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => ChkBox(); 
}

class ChkBox extends State<Chk>
{
   bool chk1=false;
   bool chk2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>
          [
            Text("what are you?"),
            Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          Text("Player"),
          Checkbox(value:chk1 ,
           onChanged:(value)
           {
             setState(() {
               chk1=value;
             });
           }
          ),
          Text("Runner"),
          Checkbox(value:chk2 ,
           onChanged:(value)
           {
             setState(() {
               chk2=value;
             });
           }
          )
        ],
      )
          ])
    )
    );
  }
}// this is check box
//--------------------------------------------
class AniCont extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => AniCont1();
}

class AniCont1 extends State<AniCont>
{
  Color _color=Colors.blue;
  BorderRadius _border=BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>
       [
          AnimatedContainer(
         height: 200,
         width:200,
         decoration: BoxDecoration(
         color:_color,
         borderRadius: _border,
         ),
          duration: Duration(
           milliseconds: 350,
         ),
       ),
       SizedBox(height:27),
      CupertinoButton(
        child: Text("data"),
        color: Colors.blue,
       onPressed: (){
         setState(() {
           if(_color==Colors.blue)
           {
             _color=Colors.red;
             _border=BorderRadius.circular(100);
           }
           else{
              _color=Colors.blue;
             _border=BorderRadius.circular(10);
           }
         });
       },
       )
        ]
         )
     )
    );
  } 
}// animated container is up here
//------------------------------------------------------
