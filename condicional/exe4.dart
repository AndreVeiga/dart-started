/**
 * Faça um algoritmo que leia 4(quatro) valores e escreva os 3 (tres) maiores 
 * em ordem decrescente. Considere que podem ocorrer valores iguais.
 */
import "dart:io";

main() {
  var numero, maior1, maior2, maior3;

  print("Digite 4 valores inteiros: ");
  numero = int.parse(stdin.readLineSync());
  maior1 = numero;

  numero = int.parse(stdin.readLineSync());
  if (numero > maior1) {
    maior2 = maior1;
    maior1 = numero;
  } else {
    maior2 = numero;
  }

  numero = int.parse(stdin.readLineSync());
  if (numero >= maior1) {
    maior3 = maior2;
    maior2 = maior1;
    maior1 = numero;
  } else if (numero > maior2) {
    maior3 = maior2;
    maior2 = numero;
  } else {
    maior3 = numero;
  }

  numero = int.parse(stdin.readLineSync());
  if (numero >= maior1) {
    maior3 = maior2;
    maior2 = maior1;
    maior1 = numero;
  } else if (numero >= maior2) {
    maior3 = maior2;
    maior2 = numero;
  } else if (numero > maior3) {
    maior3 = numero;
  }

  print("A ordem ficou $maior1 -> $maior2 -> $maior3. ");
}
