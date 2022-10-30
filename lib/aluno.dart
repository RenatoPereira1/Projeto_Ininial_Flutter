import 'package:flutter/material.dart';
import 'package:untitled/professor.dart'; //importando a segunda pagina


//contrução da primeira pagina pelo  Stateles
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  //inicio da estrutura da pagina utilizando Widget
  Widget build(BuildContext context){
    // utilizando o Scaffold que implementa uma estrutura de layout visual do Material Design
    return Scaffold(
      appBar: AppBar(
        title:Text("Bem vindo Aluno"),
      ),
      body: ListView(
        children: [
          //Utilizei o Card da biblioteca Material para apresentar as informações
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
                 // Lista de botões com as opções para serem selecionadas utilizando ElevateButton
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

                  title: const Text('Você é calouro ou veterano ?'),
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
                      child: const Text('Calouro'),
                    ),
                    ElevatedButton(

                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Veterano'),
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
