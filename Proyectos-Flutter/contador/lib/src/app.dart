import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Center(
        // child: Text("Hola Amigo!!"),
        child: HomePage(), //llamo a mi clase HomePage que tiene el Widget
      ),
    );
  
  }
}