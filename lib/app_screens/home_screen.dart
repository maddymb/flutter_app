import 'dart:math';

import 'package:flutter/material.dart';

class home_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(

          child:
          Text(
            "Your Lucky Number is ${generateLuckyNumber()}",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 35.0),
          )
      ),
    );
  }


  int generateLuckyNumber(){

    var random= Random();
    int luckynumber= random.nextInt(10);
    return luckynumber;

  }


}