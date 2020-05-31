import 'package:covid_19_data/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData(
      
        primaryColor: Color(0XFF473F97),
      ),
      home: HomeScreen(),
    );
  }
}

