import 'package:contador/src/pages/contador_page.dart';
// import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {// El BuildContext contiene la informacion relevante al arbol de widget. El BuildContext se utiliza para ubicar el widget en la jerarquía de widgets.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: Text("Hola Amigo!!"),
        // child: HomePage(), //llamo a mi clase HomePage que tiene el Widget
          child: ContadorPage(),
      ),
    );
  
  }
}