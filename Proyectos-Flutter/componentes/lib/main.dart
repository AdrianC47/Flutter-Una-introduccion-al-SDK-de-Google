import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_temp.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
        ),
        body: HomePageTemp()
      ),
    );
  }
}