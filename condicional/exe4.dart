/**
 * Faça um algoritmo que leia 4(quatro) valores e escreva os 3 (tres) maiores 
 * em ordem decrescente. Considere que podem ocorrer valores iguais.
 */
import "dart:io";

main() {
  print("Digite 4 valores inteiros: ");
  var num1 = int.parse(stdin.readLineSync());
  var num2 = int.parse(stdin.readLineSync());
  var num3 = int.parse(stdin.readLineSync());
  var num4 = int.parse(stdin.readLineSync());
  var maior1, maior2;

  // incompleto!
  maior1 = maior(maior(num1, num2), maior(num3, num4));

  print(maior1);
}

int maior(var a, var b) {
  return a >= b ? a : b;
}
