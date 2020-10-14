/**
 * Faça um algoritmo que leia 10 números, positivos ou negativos, e escreva 
 * ao final o maior deles. Dica:O valor inicial do maior não pode ser maior 
 * do que todos os dados do conjunto.
 * exer: 1500
 */

import "dart:io";

main() {
  print("Digite o 1.o valor: ");
  int maior = int.parse(stdin.readLineSync());

  int numero;
  for (int i = 2; i <= 10; i++) {
    print("Digite o $i.o valor: ");
    numero = int.parse(stdin.readLineSync());
    if (numero > maior) {
      maior = numero;
    }
  }

  print("O maior valor digitado foi $maior");
}
