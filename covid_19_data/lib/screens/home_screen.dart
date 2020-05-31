import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';


class HomeScreen extends StatefulWidget{

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Country _selectedCountry;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Covid-19",
                style: TextStyle(color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
                ),
                Container(
                  height: 40.0,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
                  child: CountryPicker(onChanged: (Country country) {

                    setState(() {
                      _selectedCountry = country;
                    });


                  },
                  selectedCountry: _selectedCountry,
                  ),
                )
              ],
            ),
          ),
          Text("Are you felling sick?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.0
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text("If you feel sick with any of covid-19 symptoms please call or sms us now",
          style: TextStyle(fontSize: 15.0, color: Colors.white, height: 1.5)
          )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
            children: <Widget>[
              FlatButton.icon(
                padding: 
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Color(0XFFF4D58),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
                label: Text("Call Now",
                style: TextStyle(color: Colors.white)),

                onPressed: () {}, icon: Icon(Icons.phone, color: Colors.white,
                )),
                FlatButton.icon(
                padding: 
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Color(0XFF4D79FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
                label: Text("Send SMS",
                style: TextStyle(color: Colors.white)),

                onPressed: () {}, icon: Icon(Icons.phone, color: Colors.white,)
                )
            ],
          ),
        ),
        ],
        ),

      );


    }
}
