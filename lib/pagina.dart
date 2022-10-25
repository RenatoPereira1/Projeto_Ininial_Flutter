import 'package:flutter/material.dart';
import 'package:untitled/outraPagina.dart';//importando a segunda pagina

//contrução da primeira pagina pelo  Stateles
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo a pagina 1"), //titulo da barra
      ) ,
      body: Container(
        child: Center(
          //criando o botão onde navegaremos pelas paginas
          child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    //criando a rota para a segunda pagina
                    MaterialPageRoute(
                      builder: (BuildContext context) => outraPagina()));
              },
              child: Text("Ir para outra pagina")  //texto do botão
          ),
        ),
      ) ,
    );
  }
}

