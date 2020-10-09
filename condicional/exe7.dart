/**
 * Faça um algoritmo que leia para um trabalhador o valor que ganha por hora, 
 * a hora de entrada e a hora de saída (valores inteiros, sem minutos) e 
 * calcule quanto ele ganhou pelo turno. Considere que ele entra e sai no 
 * mesmo dia, e que as horas antes das 6:00 da manhã e a partir das 20:00 
 * valem 20% a mais (adicional noturno).
 */
import "dart:io";

main() {
  var salarioPorHora, entrada, saida, total;

  print("Digite o salario: ");
  salarioPorHora = double.parse(stdin.readLineSync());

  print("Digite o horario de entrada: ");
  entrada = int.parse(stdin.readLineSync());

  print("Digite o horario de saida: ");
  saida = int.parse(stdin.readLineSync());

  total = (saida - entrada) * salarioPorHora;

  total += adicionaValorAntes(entrada, saida, salarioPorHora);
  total += adicionaValorDepois(entrada, saida, salarioPorHora);

  print("O total foi de $total");
}

double adicionaValorAntes(var entrada, var saida, var salario) {
  if (entrada >= 6) {
    return 0.0;
  }
  if (saida > 6) {
    return (6 - entrada) * (salario * 0.2);
  } else {
    return (saida - entrada) * (salario * 0.2);
  }
}

double adicionaValorDepois(var entrada, var saida, var salario) {
  if (saida <= 20) {
    return 0.0;
  }
  if (entrada < 20) {
    return (saida - 20) * (0.2 * salario);
  } else {
    return (saida - entrada) * (0.2 * salario);
  }
}
