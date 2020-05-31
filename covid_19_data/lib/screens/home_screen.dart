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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
      ],
    ),
    body: ListView(
      children: <Widget>[_header()],
    ),
    );
      
    }

    Widget _header() {
      return Container(
        height: 250.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0)
        )
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
            child: Row(
              children: <Widget>[
                Text("Covid-19")
              ],
            ),
          )
        ],),

      );


    }
}
