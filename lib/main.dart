import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(Magic());
}

class Magic extends StatefulWidget {
  Magic({ Key key }) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
    int num=1;
  void work(){
    setState(() {
          num=Random().nextInt(5)+1;

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('images/magic.png')           
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Ask me anything',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
              ),
            )
          ],
        ),
        ),
        body: Center(
        child: Row(
          children: <Widget>[
            // ignore: deprecated_member_use
            Expanded(child: FlatButton(
              onPressed: (){
                work();
              },
              child: Image.asset('images/ball$num.png'))),
          ],
        )
        ),
      ),
    );
  }
}
