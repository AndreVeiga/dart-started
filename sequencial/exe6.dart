/**
 * Faça um algoritmo que leia 2 valores e escreva o menor deles.  
 * Dica: O menor entre dois valores pode ser obtido a partir do maior valor 
 * e da soma dos dois (por exemplo: Se a soma de dois valores é 15 e o valor 
 * do maior é 10, como pode ser calculado o valor do menor?).
 */

import 'dart:io';

main() {
  print("Digite o primeiro valor: ");
  var v1 = double.parse(stdin.readLineSync());

  print("Digite o segundo valor: ");
  var v2 = double.parse(stdin.readLineSync());

  var maior = (v1 + v2 + (v1 - v2).abs()) / 2;
  var menor = ((v1 + v2) - maior).abs();

  print("O valor menor foi o $menor");
}
