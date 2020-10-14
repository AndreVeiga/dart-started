/**
 * Sequencia de exercicios iterativos
 */

import "dart:io";

main() {
  // exerc1();
  exerc2();
}

/**
 * Faça um algoritmo que leia um número e verifique se é primo 
 * escrevendo se o número é primo ou não.
 */
void exerc1() {
  print("Digite o valor:");
  int numero = int.parse(stdin.readLineSync());
  int divisor;
  for (int i = 2; numero % i != 0; i++) {
    divisor = i;
  }

  divisor++;

  if (divisor == numero) {
    print("O número $numero é primo.");
  } else {
    print("O número $numero não é primo.");
  }
}

/**
 * Faça um algoritmo que leia 10 números e escreva ao final
 * o maior e o menor deles.
 */
void exerc2() {
  int numero, maior, menor;
  print("Digite o 1.o valor");
  numero = int.parse(stdin.readLineSync());
  maior = numero;
  print("Digite o 2.o valor");
  numero = int.parse(stdin.readLineSync());
  if (numero > maior) {
    menor = maior;
    maior = numero;
  } else {
    menor = numero;
  }

  for (int i = 3; i <= 10; i++) {
    print("Digite o $i.o valor");
    numero = int.parse(stdin.readLineSync());
    if (numero > maior) {
      maior = numero;
    }

    if (numero < menor) {
      menor = numero;
    }
  }

  print("O maior valor é $maior");
  print("O menor valor é $menor");
}
