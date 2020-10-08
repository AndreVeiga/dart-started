/**
 * Faça um algoritmo que leia 3 notas de um aluno e escreva sua média 
 * harmônica (MH). Caso alguma das notas seja 0 (zero), MH deve receber 0 (zero). 
 * Se o aluno obteve uma MH abaixo de 6.0, E SOMENTE NESSE CASO, o algoritmo deve 
 * ler uma quarta nota (da prova de recuperação) e substitua a menor das três notas 
 * pela nota da recuperação, recalculando MH. 
 * O algoritmo deve escrever a MH final e o conceito obtido (0, se MH < 6.0; 1 
 * se 6.0 <= MH <7.0; 2 se 7.0 <= MH < 8.0; 3 se 8.0 <= MH < 9.0; 4 se MH>=9.0).  
 * Dica:A média harmônica entre três valores N1, N2 e N3 é calculada 
 * pela expressão 3/(1/N1+1/N2+1/N3).
 */
import "dart:io";

main() {
  print("Digite as três notas do aluno: ");
  var n1 = double.parse(stdin.readLineSync());
  var n2 = double.parse(stdin.readLineSync());
  var n3 = double.parse(stdin.readLineSync());
  var media = 0.0, n4;

  if (verificaZero(n1, n2, n3)) {
    print("A média do aluno é $media");
  } else {
    media = calculaMedia(n1, n2, n3);
    if (media < 6.0) {
      print("Digite a média da recuperação: ");
      n4 = double.parse(stdin.readLineSync());

      if (n1 < n2 && n1 < n3) {
        media = calculaMedia(n4, n2, n3);
      } else if (n2 < n1 && n2 < n3) {
        media = calculaMedia(n1, n4, n3);
      } else {
        media = calculaMedia(n1, n2, n4);
      }
      verificaStatus(media);
    } else {
      verificaStatus(media);
    }
  }
}

void verificaStatus(var media) {
  if (media < 6) {
    print("Você foi REPROVADO.");
  } else {
    print("Você foi APROVADO.");
    escreveConceito(media);
  }
}

void escreveConceito(var media) {
  if (media >= 9) {
    print("Conceito 4");
  } else if (media >= 8 && media < 9) {
    print("Conceito 3");
  } else if (media >= 7 && media < 8) {
    print("Conceito 2");
  } else {
    print("Conceito 1");
  }
}

bool verificaZero(var n1, var n2, var n3) {
  return n1 == 0 || n2 == 0 || n3 == 0;
}

double calculaMedia(var n1, var n2, var n3) {
  return 3 / ((1 / n1) + (1 / n2) + (1 / n3));
}
