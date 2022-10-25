import 'package:flutter/material.dart';

class outraPagina extends StatelessWidget {
  const outraPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo a pagina 2"),
      ) ,
        body: Container(
            child: Center(
              //criando o botão para navegar nas paginas
            child: ElevatedButton(
            onPressed: () {Navigator.pop(context);
              },
              child: Text("Voltar para Primeira Pagina"), //criando o texto do botão
              ),
            ),
        ),
    );
  }
}
