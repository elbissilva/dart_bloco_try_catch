class Aluno {
  String _nome = "";
  //int _idade = 0;
  List<double> _notas= [];

  Aluno(String nome){
    _nome = nome;
    //_idade = idade;
  }

  void setNome (nome){
    _nome = nome;
  }
  void setIdade (idade){
    //_idade = idade;
  }

  String getNome(){
    return _nome;
  }
  // //int getIdade(){
  //   return _idade;
  // }
  List<double> getNotas(){
    return _notas;
  }
  void addNota(double nota){
    _notas.add(nota);
  }
  
  double retornaMedia(){
    var todasNotas = 0.0;
    for (var nota in _notas) {
      todasNotas = todasNotas + nota;
      
    }
    var media = todasNotas / _notas.length;
    return media.isNaN?0 : media;
  }
  bool aprovado(double notaCorte){
    return retornaMedia() >= notaCorte;
  }
    

}