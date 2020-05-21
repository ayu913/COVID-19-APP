
import 'package:covidtrackapp/screens/intro.dart';

import 'package:flutter/material.dart';

import 'call_and _msg/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Courgette",
        
      ),
       
     debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

