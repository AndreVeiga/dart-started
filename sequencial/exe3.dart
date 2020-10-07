/**
 * Faça um algoritmo que leia 2 valores reais v1 e v2 e calcule 
 * e escreva a área do triângulo que tem base igual a v1 e altura igual a v2. 
 * Dica: A área de um triângulo é dada pela expressão: (base x altura) / 2.
 * 
 * Use double.parse(variavel) para valores reais. 
 */
import 'dart:io';

main() {
  print('Digite o primeiro valor (base): ');
  var base = double.parse(stdin.readLineSync());

  print('Digite o segundo valor (altura): ');
  var altura = double.parse(stdin.readLineSync());

  var resultado = (base * altura) / 2;

  print("A area do triangulo é $resultado ");
}