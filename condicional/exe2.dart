/**
 * Faça um algoritmo que leia 3 notas de um aluno e escreva sua média harmônica.
 * Dica:A média harmônica entre três valores N1, N2 e N3 é calculada pela 
 * expressão 3 / (1/N1 + 1/N2 + 1/N3). O que acontece se alguma das notas 
 * for igual a 0 ? Que resultado o algoritmo deve emitir? 
 */
import "dart:io";

main() {
  print("Digite as três notas do aluno: ");
  var n1 = double.parse(stdin.readLineSync());
  var n2 = double.parse(stdin.readLineSync());
  var n3 = double.parse(stdin.readLineSync());

  if (verificaZero(n1, n2, n3)) {
    print("Divisão com valor com zero.");
  } else {
    var media = 3 / (1 / n1 + 1 / n2 + 1 / n3);
    print("A média é $media");
  }
}

bool verificaZero(var n1, var n2, var n3) {
  return n1 == 0 || n2 == 0 || n3 == 0;
}
