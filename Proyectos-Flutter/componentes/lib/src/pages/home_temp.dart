import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Cadillac Solitario','Name','Minutos','Inevitable','16'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems()
      ),
    );
  }


  List<Widget> _crearItems(){
    // Tenemos dos formas de transformar una lista en una lista de Widgets

    List<Widget> lista =  [];// se crea una lista de Widgets

    for (String opt in opciones) {

        final tempWidget = ListTile(
          title: Text(opt),
          // Di
        );
        //Aqui se usa el operador de cascada 
        lista..add(tempWidget) //Este operador permite realizar varias operaciones en el mismo objeto sin tener que repetir el nombre del objeto
             ..add(Divider(color: Colors.purple,)); // esta es con codigo mas limpio, Continuando con la cascada, se está agregando otro widget a la lista.

        // lista.add(Divider(color: Colors.purple,)); //esta es la forma tradicional
    }


    return lista;
  }

  List<Widget> _crearItemsCorta(){
     
  }
}