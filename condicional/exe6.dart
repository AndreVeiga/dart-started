/**
 * Faça um algoritmo que leia para um trabalhador o valor que ganha por hora, 
 * a hora de entrada e a hora de saída (valores inteiros, sem minutos) e 
 * calcule e escreva quanto ele ganhou pelo turno. Considere que ele entra e 
 * sai no mesmo dia, e que as horas a partir das 20:00 valem 20% a mais 
 * (adicional noturno).
 */

import "dart:io";

main() {
  var salarioPorHora, entrada, saida, total;

  print("Digite o salario por hora: ");
  salarioPorHora = double.parse(stdin.readLineSync());

  print("Digite o horario de entrada: ");
  entrada = int.parse(stdin.readLineSync());

  print("Digite o horario de saida: ");
  saida = int.parse(stdin.readLineSync());

  total = (saida - entrada) * salarioPorHora;
  total += valorAdicional(entrada, saida, salarioPorHora);
  print("O valor total é $total");
}

double valorAdicional(var entrada, var saida, var sal) {
  entrada = entrada == 0 ? 1 : entrada;
  saida = saida == 0 ? 1 : saida;

  if (sal == 0) {
    return 0.0;
  }

  if (entrada >= 20 && saida > 20) {
    return (saida - entrada) * (sal * 0.2);
  } else if (entrada < 20 && saida > 20) {
    return (saida - 20) * (sal * 0.2);
  }
  return 0.0;
}
