import 'package:flutter/material.dart';

import 'pagina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testes Renato',//titulo da pagina
      theme: ThemeData(
        // criei as cores do tema
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: const PaginaInicial(),  //chamando a pagina inicial
    );
  }
}
