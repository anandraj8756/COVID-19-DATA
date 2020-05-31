import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
      ],
    ));
  }
}