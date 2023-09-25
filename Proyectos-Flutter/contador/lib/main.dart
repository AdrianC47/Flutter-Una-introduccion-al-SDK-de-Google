import 'package:flutter/material.dart';

void main(){

  runApp(new MyApp()); //con este comando mando a ocrrer mi aplicacion

}

class MyApp extends StatelessWidget{

  @override
  Widget build (context){

    return MaterialApp(
      home: Center(
        child: Text("Hola Amigo") ,
      )
    );
  }
}