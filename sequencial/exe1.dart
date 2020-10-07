/**
 * Faça um algoritmo que leia um valor N, representando o lado de um quadrado, 
 * e calcule e escreva a área do quadrado. 
 * Dica:A área de um quadrado de lado N é dada por N x N.
 *
 * Use var input = stdin.readLineSync(); para ler do terminal
 * Use int.parse(variavel) para o casting
 * Use $ para interpolação na string
 */
import 'dart:io';

 main() {
  print("Digite o valor de N: ");
  var n = stdin.readLineSync();
  var resultado = int.parse(n) * int.parse(n);
  print("O valor do quadrado de N é: $resultado");
 }