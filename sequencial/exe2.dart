/**
 * Faça um algoritmo que leia dois valores inteiros e escreva a sua soma.
 */
import 'dart:io';

 main() {
   print('Digite o valor de A: ');
   var a = int.parse(stdin.readLineSync());

   print('Digite o valor de B: ');
   var b = int.parse(stdin.readLineSync());

   var soma = a + b;
   print("A soma entre A: $a e B: $b é $soma ");
 }