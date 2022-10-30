import 'package:flutter/material.dart';

import 'aluno.dart';

void main() {
  runApp(const MyApp());
}
// criação da classe MyApp que é obrigatoria e utilização do estado StatelessWidget para informações estáticas
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testes Renato',//titulo da pagina
      theme: ThemeData(
        // criar o tema e suas cores
        primarySwatch: Colors.red,

      ),
      home: const MyHomePage(),  //chamando a pagina inicial no outro arquivo
    );
  }
}



