/**
 * Mais algoritmos de iteração.
 */

import 'dart:io';

void main() {
  exerc1();
}

/**
 * Faça um algoritmo que leia um valor n (n>=1) correspondente  ao número 
 * de alunos de uma turma. Após, o algoritmo lê as notas das  provas dos n 
 * alunos dessa turma. As notas deverão ser lidas até que sejam informadas n 
 * notas válidas, ou seja, no intervalo [0, 10], descartando as notas fora 
 * desse intervalo. As notas somente poderão ser lidas uma única vez. 
 * O algoritmo deve informar qual foi a menor nota e o percentual dos alunos 
 * que tiraram a menor nota (que não é, necessariamente, 0). Por exemplo, 
 * se o valor lido para n foi 20 e as notas foram 6.0 6.5 8.0 9.0 4.5 3.0 9.0 
 * 8.5 4.5 3.0 6.0 3.0 8.0 9.0 4.5 10 9.0 8.5 4.5 3.0 o algoritmo escreve 3.0 
 * e 20, já que quatro (20% de 20) alunos tiraram essa nota
 */
void exerc1() {
  print('Digite o numero de alunos: ');
  int quantidade = int.parse(stdin.readLineSync());
  var notas = [];
  double menorNota = 10.0;
  int qqMenorNota = 0;

  for (int i = 1; i <= quantidade; i++) {
    bool notaInvalida = true;
    while (notaInvalida) {
      print("Digite a nota do $i.o aluno: ");
      double nota = double.parse(stdin.readLineSync());
      if (nota >= 0.0 && nota <= 10.0) {
        notas.add(nota);
        notaInvalida = false;
        if (nota < menorNota) {
          menorNota = nota;
          qqMenorNota = 1;
        } else if (nota == menorNota) {
          qqMenorNota++;
        }
      } else {
        print("Digite uma nota válida (entre 0 e 10).");
      }
    }
  }
  double porcentagem = (qqMenorNota / quantidade) * 100;
  print("A menor nota foi $menorNota com $porcentagem %.");
}
