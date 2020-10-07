/**
 * Faça um algoritmo que leia 2 valores e escreva o maior deles. 
 * Dica:O maior entre dois valores quaisquer v1 e v2 pode ser calculado 
 * pela expressão (v1+v2+|v1-v2|)/2. 
 * O operador matemático de módulo ( |x| )   é representado na nossa 
 * linguagem pela função abs(x).
 */
import 'dart:io';

main() {
  print("Escreva o valor de V1: ");
  var v1 = double.parse(stdin.readLineSync());

  print("Escreva o valor de V2: ");
  var v2 = double.parse(stdin.readLineSync());

  var resultado = (v1 + v2 + (v1-v2).abs()) / 2;
  print("O maior é o valor: $resultado");
}