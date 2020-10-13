/**
 * Serie de exercicios simples em dart.
 */
import "dart:io";

main() {
  // exer1();
  // exer2();
  // exer3();
  exer4();
}

/**
 * Faça um algoritmo que escreva os números de 1 a o valor digitado.
 */
void exer1() {
  print("Digite um valor: ");
  int numero = int.parse(stdin.readLineSync());

  for (var i = 1; i <= numero; i++) {
    // print("$i");
  }
}

/**
 * Faça um algoritmo que leia números até que seja digitado um número negativo,
 * e escreva todos que forem pares.
 */
void exer2() {
  int numero;
  var pares = [];
  do {
    print("Digite um valor: ");
    numero = int.parse(stdin.readLineSync());
    if (numero % 2 == 0) {
      pares.add(numero);
    }
  } while (numero >= 0);

  for (var i = 0; i < pares.length; i++) {
    print(pares[i]);
  }
}

/**
 * Faça um algoritmo que leia um valor N, representando a quantidade de valores
 * a serem lidos em seguida. Leia, a seguir, N valores e escreva todos que 
 * forem positivos.
 */
void exer3() {
  print("Digite a quantidade de vezes que será lido: ");
  int n = int.parse(stdin.readLineSync());
  var positivos = [];
  int numero;
  for (var i = 1; i <= n; i++) {
    print("Digite o $i.o valor: ");
    numero = int.parse(stdin.readLineSync());
    if (numero >= 0) {
      positivos.add(numero);
    }
  }

  for (int o = 0; o < positivos.length; o++) {
    print(positivos[o]);
  }
}

/**
 * Faça um algoritmo que leia um valor N, e conte quantos divisores possui, 
 * escrevendo ao final essa informação.
 */
void exer4() {
  print("Digite um valor: ");
  int n = int.parse(stdin.readLineSync());
  int divisores = 1;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      divisores++;
    }
  }

  print("O valor $n possui $divisores divisores.");
}
