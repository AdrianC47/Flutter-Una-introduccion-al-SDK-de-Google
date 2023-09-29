import 'package:flutter/material.dart';

// El StatefulWidget consta de 2 partes, la primera es el StatefulWidget como tal y el 2do es el estado
// que va a manejar el StatefulWidget

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//El poner el State es un estandar, la parte del State unicamente se utilizará en el widget, es el estado de la
//primera clase y no va a ser utilizado fuera de la misma
// con el _antes del nombre pues hago la clase privada
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Una app bar para mostrarla al tope del Scaffold
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Número de clicks:',
            style: _estiloTexto,
          ),
          Text(
            '$_conteo',
            style: _estiloTexto,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // print("Hola Amigo!!"); // aqui se pone si o si el ; debido a que estoy dentro de una lista de argumentos de una funcion, es opcional pero es lo ideal
          //como se esta trabajando con un StatefullWidget pues necesito que se redibuje todo el widget para ello llamo al metodo setState
          setState(() {
            _conteo++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    ); //
  }
}
