import 'package:flutter/material.dart';
import 'package:untitled/professor.dart'; //importando a segunda pagina


//contrução da primeira pagina pelo  Stateles
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Bem vindo Aluno"),
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(

                  title: const Text('Qual a sua opnião sobre a aula?'),
                  subtitle: Text(
                    '',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Otima'),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Boa'),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Regular'),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Ruim'),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(

                  title: const Text('Escreva um comentário sobre a aula de hoje'),
                  subtitle: Text(
                    '',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),


                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Otima'),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Ruim'),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          //criando a rota para a segunda pagina
                          MaterialPageRoute(
                              builder: (BuildContext context) => outraPagina()));
                    },
                    child: Text("Ir para outra pagina") //texto do botão
                ),
              ],
            ),
          ),
        ],
      ),
    );




  }
}
