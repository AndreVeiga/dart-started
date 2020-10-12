/**
 * Faça um algoritmo que leia 5 valores entre 1 e 6, já ordenados, 
 * correspondente ao arremesso de 5 dados no jogo do general, e escreva:
 * 1 - Se os 5 valores são iguais
 * 2 - Se há 4 valores iguais e um diferente
 * 3 - Se os 5 valores formam uma sequência (1,2,3,4,5 ou 2,3,4,5,6)
 * 4 - Se os valores formam um full-hand (3 valores iguais entre si, 
 * e os outros dois valores também iguais entre si)
 * 5 - Nenhuma das combinações acima
 */
import "dart:io";

main() {
  var num1, num2, num3, num4, num5, aux;
  print("Digite 5 valores inteiros entre 1 e 6: ");
  num1 = double.parse(stdin.readLineSync());
  num2 = double.parse(stdin.readLineSync());
  if (num2 < num1) {
    aux = num1;
    num1 = num2;
    num2 = aux;
  }
  num3 = double.parse(stdin.readLineSync());
  if (num3 < num1) {
    aux = num2;
    num2 = num1;
    num1 = num3;
    num3 = aux;
  } else if (num3 < num2) {
    aux = num2;
    num2 = num3;
    num3 = aux;
  }
  num4 = double.parse(stdin.readLineSync());
  if (num4 < num1) {
    aux = num1;
    num3 = num2;
    num2 = num1;
    num1 = num4;
    num4 = aux;
  } else if (num4 < num2) {
    aux = num2;
    num2 = num4;
    num4 = num3;
    num3 = aux;
  } else if (num4 < num3) {
    aux = num3;
    num3 = num4;
    num4 = aux;
  }
  num5 = double.parse(stdin.readLineSync());
  if (num5 < num1) {
    aux = num1;
    num1 = num5;
    num5 = num4;
    num4 = num3;
    num3 = num2;
    num2 = aux;
  } else if (num5 < num2) {
    aux = num2;
    num2 = num5;
    num5 = num4;
    num4 = num3;
    num3 = aux;
  } else if (num5 < num3) {
    aux = num5;
    num5 = num4;
    num4 = num3;
    num3 = aux;
  } else if (num5 < num4) {
    aux = num4;
    num4 = num5;
    num5 = aux;
  }

  print("Valores ordenados: ");
  print("$num1 - $num2 - $num3 - $num4  - $num5 \n");

  if (opcaoUm(num1, num2, num3, num4, num5)) {
    return;
  }

  if (opcaoDois(num1, num2, num3, num4, num5)) {
    return;
  }

  if (opcaoTres(num1, num2, num3, num4, num5)) {
    return;
  }

  if (opcaoQuatro(num1, num2, num3, num4, num5)) {
    return;
  }

  print("5");
}

// * 1 - Se os 5 valores são iguais
bool opcaoUm(var num1, var num2, var num3, var num4, var num5) {
  bool resultado = num1 == num2 && num2 == num3 && num3 == num4 && num4 == num5;
  if (resultado) {
    print("Opção 1");
  }
  return resultado;
}

// * 2 - Se há 4 valores iguais e um diferente
bool opcaoDois(var a, var b, var c, var d, var e) {
  bool abcd = eIgual(a, b) && eIgual(a, c) && eIgual(a, d);
  bool acde = eIgual(a, c) && eIgual(a, d) && eIgual(a, e);
  bool abde = eIgual(a, b) && eIgual(a, d) && eIgual(a, e);
  bool abce = eIgual(a, b) && eIgual(a, c) && eIgual(a, e);
  bool bcde = eIgual(b, c) && eIgual(b, d) && eIgual(b, e);

  if (abcd || acde || abde || abce || bcde) {
    print("Opção 2");
  }

  return abcd || acde || abde || abce || bcde;
}

//3 - Se os 5 valores formam uma sequência (1,2,3,4,5 ou 2,3,4,5,6)
bool opcaoTres(var a, var b, var c, var d, var e) {
  bool resultado = eIgual(a + 1, b) &&
      eIgual(b + 1, c) &&
      eIgual(c + 1, d) &&
      eIgual(d + 1, e);

  if (resultado) {
    print("Opção 3");
  }
  return resultado;
}

// * 4 - Se os valores formam um full-hand (3 valores iguais entre si,
// * e os outros dois valores também iguais entre si)
bool opcaoQuatro(var a, var b, var c, var d, var e) {
  var abc_de = eIgual(a, b) && eIgual(a, c) && eIgual(d, e);
  var abd_ce = eIgual(a, b) && eIgual(a, d) && eIgual(c, e);
  var acd_be = eIgual(a, c) && eIgual(a, d) && eIgual(b, e);
  var bcd_ae = eIgual(b, c) && eIgual(b, d) && eIgual(a, e);

  var cbe_ad = eIgual(c, b) && eIgual(c, e) && eIgual(a, d);
  var ace_bd = eIgual(a, c) && eIgual(a, e) && eIgual(b, d);
  var abe_cd = eIgual(a, b) && eIgual(a, e) && eIgual(c, d);

  var bde_ac = eIgual(b, d) && eIgual(b, e) && eIgual(a, c);
  var ade_bc = eIgual(a, d) && eIgual(a, e) && eIgual(c, b);

  var cde_ab = eIgual(c, d) && eIgual(c, e) && eIgual(a, b);

  var resultado1 = abc_de || abd_ce || acd_be || bcd_ae || cbe_ad;
  var resultado2 = abe_cd || bde_ac || ade_bc || cde_ab || ace_bd;

  if (resultado1 || resultado2) {
    print("Opção 4");
  }

  return resultado1 || resultado2;
}

bool eIgual(var a, var b) {
  return a == b;
}

bool eMaior(var a, var b) {
  return a > b;
}
