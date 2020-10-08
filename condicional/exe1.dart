/**
 * Compilado de exercicios simples em Dart
 */
import "dart:io";
import "dart:math";

main() {
  // exerc1();
  // exerc2();
  exerc3();
}

/**
 * Faça um algoritmo que leia um valor e escreva: 0, se o valor é zero; 1, 
 * e o valor é maior que zero; -1 - se o valor é negativo.
 */
void exerc1() {
  print("Digite um valor: ");
  var numero = int.parse(stdin.readLineSync());
  if (numero == 0) {
    print("O valor é igual a zero.");
  } else if (numero > 0) {
    print("Resultado é igual a 1, pois é maior que zero.");
  } else {
    print("Resultado é igual a -1, pois o valor é negativo.");
  }
}

/**
 * Faça um algoritmo que leia 3 valores v1, v2 e v3,
 * e escreva-os em ordem crescente.
 */
void exerc2() {
  print("Digite 3 valores inteiros: ");
  var v1 = int.parse(stdin.readLineSync());
  var v2 = int.parse(stdin.readLineSync());
  var v3 = int.parse(stdin.readLineSync());

  var aux;
  if (v3 < v1) {
    aux = v3;
    v3 = v1;
    v1 = aux;
  }

  if (v3 < v2) {
    aux = v2;
    v2 = v3;
    v3 = aux;
  }

  if (v2 < v1) {
    aux = v1;
    v1 = v2;
    v2 = aux;
  }

  print("Os valores crescente são $v1 , $v2, $v3.");
}

/**
 * Faça um algoritmo que leia 3 valores a, b e c, coeficientes de uma equação
 * de segundo grau, e verifique se a equação tem raízes reais. Se a equação 
 * tiver raízes reais, calcule e escreva as raízes da equação (em ordem crescente).
 * Se não tiver, escreva "A equação não possui raízes reais".  
 * Dica: As raízes de uma equação podem ser calculadas pela fórmula de Baskhara. 
 * Uma equação não possui raízes se reais se (b * b - 4 * a * c) < 0.  
 */
void exerc3() {
  print("Digite 3 valores: ");
  var a = double.parse(stdin.readLineSync());
  var b = double.parse(stdin.readLineSync());
  var c = double.parse(stdin.readLineSync());
  if (verificaDeltaSemRaiz(a, b, c)) {
    print("A equação não possui raízes reais.");
  } else {
    var delta = (pow(b, 2)) - (4 * a * c);
    var resultado = ((-b) + (sqrt(delta))) / (2 * a);
    print("O resultado é $resultado");
  }
}

bool verificaDeltaSemRaiz(var a, var b, var c) {
  return (b * b - 4 * a * c) < 0;
}
