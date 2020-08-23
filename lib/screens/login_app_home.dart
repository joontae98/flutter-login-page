import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(color: Color(0xff000031),),//color Hex ARGB
          Column(
            children: <Widget>[
              Container(width: 200,height: 200,color: Colors.deepPurpleAccent,),
              Container(width: 200,height: 200,color: Color(0xff02F6D3),),
            ],
          ),
        ],
      ),
    );
  }
}
