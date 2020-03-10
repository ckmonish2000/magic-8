import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Magic(),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  var img = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Magic 8 Ball",style: TextStyle(color:Colors.grey,letterSpacing: 2.5),)),
        ),
        body: Center(
            child: Container(
                child: FlatButton(
          onPressed: () {
           var ran=Random().nextInt(5)+1;
            setState(() {
            img=ran;  
            });
          }

          ,
          child: Image.asset("images/ball$img.png"),
        ))),
      ),
    );
  }
}
