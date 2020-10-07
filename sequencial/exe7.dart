/**
 * Faça um algoritmo que le um valor entre 0 e 9999 e calcula a soma dos 
 * seus dígitos. Dica:O dígito menos significativo de um número inteiro pode 
 * ser obtido pelo resto da divisão do número por 10. 
 * Os dígitos restantes podem ser obtidos pela divisão inteira por 10. 
 */
import 'dart:io';

main() {
  print("Digite um valor inteiro entre 0 e 9999: ");
  var numero = int.parse(stdin.readLineSync());

  var soma = 0;
  var resto, novoNumero;

  resto = numero % 10;
  novoNumero = (numero / 10).truncate();
  soma += resto;

  resto = novoNumero % 10;
  soma += resto;
  novoNumero = (novoNumero / 10).truncate();

  resto = novoNumero % 10;
  soma += resto;
  novoNumero = (novoNumero / 10).truncate();

  soma += novoNumero;

  print("A soma dos valores é $soma");
}
