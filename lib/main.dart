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
        appBar: AppBar(
          title: Center(child: Text("Magic 8 Ball")),
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
