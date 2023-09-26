import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar( // Una app bar para mostrarla al tope del Scaffold
        title: Text("Titulo"),
        centerTitle: true,
      ) , 
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: <Widget>[
              Text('Número de clicks:',style: estiloTexto,),
              Text('0',style: estiloTexto,)
            ],
            )

        ),
    ); //
  }
}