import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar( // Una app bar para mostrarla al tope del Scaffold
        title: Text("Titulo"),
        centerTitle: true,
      ) , 
        body: Center(
          child: Text("Hola Adrian"),
        ),
    ); //
  }
}