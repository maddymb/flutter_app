import 'dart:math';

import 'package:flutter/material.dart';
import './app_screens/home_screen.dart';


void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "My Flutter Application",
        home: Scaffold(

            appBar: AppBar(title: Text("App Screen"),),
            body: home_screen()
        )
    );
  }





}

