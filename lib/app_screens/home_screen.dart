import 'dart:math';

import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            //width: 500.0,
            //height: 100.0,
            //margin: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Vistara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    )),
                    Expanded(
                        child: Text(
                      "Pune to Delhi ",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "SpiceJet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    )),
                    Expanded(
                        child: Text(
                      "Delhi to Pune",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ))
                  ],
                ),
                FlightImage(),
                FlightBookingButton()
              ],
            )));
  }
}

class FlightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage objAssetImage = AssetImage('images/flight.png');
    Image image = Image(image: objAssetImage, width: 250.0, height: 250.0);

    return Container(child: image);
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250.0,
        child: RaisedButton(
          color: Colors.white,
          child: Text("Book Your Flight"),
          elevation: 6.0,
          onPressed: () {
            bookFlight(context);
          },
        ));
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked"),
      content: Text("Have a plesent flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
