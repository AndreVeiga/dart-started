/**
 * Escrever um algoritmo que lê 3 valores a, b, c e calcula e escreve a média 
 * ponderada com peso 5 para o maior dos 3 valores e peso 2.5 para os outros 2.
 * Validar em: https://www.calculat.org/pt/media/media-aritmetica-ponderada.html
 */
import "dart:io";

main() {
  var num1, num2, num3, aux;
  print("Digite as notas: ");
  num1 = int.parse(stdin.readLineSync());
  num2 = int.parse(stdin.readLineSync());

  if (num2 > num1) {
    aux = num1;
    num1 = num2;
    num2 = aux;
  }

  num3 = int.parse(stdin.readLineSync());

  if (num3 > num1) {
    aux = num1;
    num1 = num3;
    num3 = num2;
    num2 = aux;
  }

  print("Ordem: $num1 - $num2 - $num3");
  var media = ((num1 * 5) + (num2 * 2.5) + (num3 * 2.5)) / (5 + 2.5 + 2.5);
  print("A média é: $media");
}
