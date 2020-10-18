/**
 * Sequencia de exercicios iterativos
 */

import "dart:io";

main() {
  // exerc1();
  // exerc2();
  // exerc3();
  // exerc4();
  exerc5();
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

/**
 * Faça um algoritmo que leia um valor N, representando a quantidade 
 * de valores a serem lidos em seguida. Leia, a seguir, N valores e 
 * escreva todos que forem positivos.
 */
void exerc3() {
  print("Digite a quantidade de valores a serem lidos: ");
  int quantidade = int.parse(stdin.readLineSync());
  var positivos = [];
  for (int indice = 1; indice <= quantidade; indice++) {
    print("Digite o $indice.o valor: ");
    int valor = int.parse(stdin.readLineSync());
    if (valor > 0) {
      positivos.add(valor);
    }
  }

  print("Os valores positivos foram: ");
  for (int i = 0; i < positivos.length; i++) {
    print(positivos[i]);
  }
}

/**
 * Faça um algoritmo que leia um valor N, e escreva todos os seus divisores. 
 * Dica:Similar ao anterior, mas ao invés de escrever todos os valores, 
 * escreva somente os que forem divisores de N.
 */

void exerc4() {
  print("Digite o  valor: ");
  int valor = int.parse(stdin.readLineSync());

  for (int i = 1; i <= valor; i++) {
    if (valor % i == 0) {
      print("O $i é divisor de $valor");
    }
  }
}

/**
 * Faça um algoritmo que leia um valor N inteiro e maior do que 1,
 * e calcule e escreva o seu maior divisor (excetuando N).
 */
void exerc5() {
  print("Escreva um valor inteiro (maior que 1): ");
  int valor = int.parse(stdin.readLineSync());
  if (valor > 1) {
    int divisorMaior = 1;
    for (int i = 1; i < valor; i++) {
      if (valor % i == 0 && i > divisorMaior) {
        divisorMaior = i;
      }
    }

    print("O maior divisor de $valor é $divisorMaior");
  } else {
    print("Valor é menor que 1...");
  }
}
