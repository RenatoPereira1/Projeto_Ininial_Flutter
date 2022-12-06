class Avaliacao {
  int? id;
  int? nota;
  String? comentario;
  int? idDisciplina;
  IdDisciplinaNavigation? idDisciplinaNavigation;

  Avaliacao(
      {this.id,
        this.nota,
        this.comentario,
        this.idDisciplina,
        this.idDisciplinaNavigation});

  Avaliacao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nota = json['nota'];
    comentario = json['comentario'];
    idDisciplina = json['idDisciplina'];
    idDisciplinaNavigation = json['idDisciplinaNavigation'] != null
        ? new IdDisciplinaNavigation.fromJson(json['idDisciplinaNavigation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nota'] = this.nota;
    data['comentario'] = this.comentario;
    data['idDisciplina'] = this.idDisciplina;
    if (this.idDisciplinaNavigation != null) {
      data['idDisciplinaNavigation'] = this.idDisciplinaNavigation!.toJson();
    }
    return data;
  }
}

class IdDisciplinaNavigation {
  int? id;
  String? nomeDisciplina;

  IdDisciplinaNavigation({this.id, this.nomeDisciplina});

  IdDisciplinaNavigation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeDisciplina = json['nomeDisciplina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nomeDisciplina'] = this.nomeDisciplina;
    return data;
  }
}