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
        floatingActionButton: _crearBotones()); //
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,), //esto es como un div en html que lo que hara es actuar como un separador
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: null),
        Expanded(child: SizedBox()),//es obligatorio un child para el Expanded
        FloatingActionButton(child: Icon(Icons.remove), onPressed: null),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: null),
      ],
    );
  }
}
