import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Avaliacao.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Avaliacao>> avaliar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    avaliar = pegarAvaliacao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satisfaction Survey'),
      ),
      body: Center(
          child: FutureBuilder<List<Avaliacao>>(
        future: avaliar,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Avaliacao avaliacao = snapshot.data![index];
                  return Card(
                    child: SizedBox(
                      width: 50,
                      height:70,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Disciplina: ' + avaliacao.idDisciplinaNavigation!.nomeDisciplina.toString()),
                            subtitle: Text('Comentario: ' + avaliacao.comentario!),
                            trailing: Text('Nota: ' + avaliacao.nota.toString()),
                          ),
                        ],
                      ),
                    ),

                  );
                });
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const CircularProgressIndicator();
        },
      )),
    );
  }

  Future<List<Avaliacao>> pegarAvaliacao() async {
    var url = Uri.parse('https://20.206.250.122:5001/Avaliacao/Listar');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List listaAvaliacao = json.decode(response.body);
      return listaAvaliacao.map((json) => Avaliacao.fromJson(json)).toList();
    } else {
      throw Exception('Erro não foi possivel listar as avaliacoes.');
    }
  }
}
