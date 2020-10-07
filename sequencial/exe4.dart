/**
 * Faça um algoritmo que leia 3 valores a, b e c, coeficientes de uma equação 
 * de segundo grau, e calcule e escreva a soma das raízes da equação. 
 * Dica:As raízes de uma equação podem ser calculadas pela fórmula de Baskhara.
 */
import 'dart:io';
import 'dart:math';

main() {
  print("Digite o valor de A: ");
  var a = double.parse(stdin.readLineSync());

  print("Digite o valor de B: ");
  var b = double.parse(stdin.readLineSync());

  print("Digite o valor de C: ");
  var c = double.parse(stdin.readLineSync());

  var delta = (pow(b, 2)) - (4 * a * c);

  var resultado = ( (-b) + (sqrt(delta)) ) / (2 * a);
  print("O resultado é $resultado ");
}