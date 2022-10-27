import 'package:flutter/material.dart';

import 'pagina.dart';

void main() {
  runApp(const MyApp());
}
// criação da classe MyApp que é obrigatoria e utilização do estado StatelessWidget para informações estáticas
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // utilizamos o @override para sobrescrever um método de uma classe mãe
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testes Renato',//titulo da pagina
      theme: ThemeData(
        // criar o tema e suas cores
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: const PaginaInicial(),  //chamando a pagina inicial no outro arquivo
    );
  }
}
