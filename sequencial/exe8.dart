/**
 * Faça um algoritmo que leia a quantidade de alunos em uma sala de aula e a 
 * quantidade de alunos por grupo, e calcule e escreva quantos grupos serão formados
 * e o resto de alunos que não foram suficientes para formar mais um grupo.
 */
import "dart:io";

main() {
  print("Informe a quantidade de alunos da sala: ");
  var qtdAlunos = int.parse(stdin.readLineSync());

  print("Informe a quantidade de grupos: ");
  var qtdGrupos = int.parse(stdin.readLineSync());

  var resultado = qtdAlunos % qtdGrupos;
  print("Com $qtdAlunos e $qtdGrupos, irá sobrar $resultado aluno(s). ");
}
