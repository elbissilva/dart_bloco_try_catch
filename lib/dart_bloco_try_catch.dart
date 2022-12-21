import 'package:dart_bloco_try_catch/classes/aluno.dart';
import 'package:dart_bloco_try_catch/classes/utils.dart';
import 'package:dart_bloco_try_catch/excecoes/erros.dart';

void execulte(){
  print("Bem vindo ao sistema de notas");
  String nome = ConsoleUtilidades.lerStringComTexto("Digite o nome do aluno");
  if (nome.trim()== ""){
    throw ErrosDeNome();
  }
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtilidades.lerDoubleComTextoeSaida("Digite uma nota ou 'S' para sair", "S");
    if (nota!=null) {
      aluno.addNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas());
  //print("A média do aluno é ${aluno.retornaMedia()}");

  if (aluno.aprovado(7)) {
    print("O aluno $nome foi aprovadi com a média ${aluno.retornaMedia()}");
    
  } else{
    print("O luno $nome foi reprovado com a média ${aluno.retornaMedia()}");
  }
  
}

