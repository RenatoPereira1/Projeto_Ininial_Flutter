import 'package:flutter/material.dart';

import 'aluno.dart';

void main() {
  runApp(const MyApp());
}
// criação da classe MyApp que é obrigatoria e utilização do estado StatelessWidget para informações estáticas
class MyApp extends StatelessWidget {
  const MyApp({super.key});

<<<<<<< HEAD
  // utilizei o @override para sobrescrever um método de uma classe mãe
=======
  // utilizamos o @override para sobrescrever um método de uma classe mãe
>>>>>>> 2a60212f5fbcaeffb620cea3be34b1083449cfcb
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testes Renato',//titulo da pagina
      theme: ThemeData(
        // criar o tema e suas cores
        primarySwatch: Colors.red,

      ),
      home: const PaginaInicial(),  //chamando a pagina inicial no outro arquivo
    );
  }
}



