/**
 * Faça um algoritmo que leia para um trabalhador o valor que ganha por hora, 
 * a hora de entrada e a hora de saída (valores inteiros, sem minutos) 
 * e calcule quanto ele ganhou pelo turno. 
 * Considere que ele entra e sai no mesmo dia.
 */
import "dart:io";

main() {
  var salarioPorHora, entrada, saida;

  print("Digite o salario por hora: ");
  salarioPorHora = double.parse(stdin.readLineSync());

  print("Digite o horario de entrada: ");
  entrada = int.parse(stdin.readLineSync());

  print("Digite o horario de saida: ");
  saida = int.parse(stdin.readLineSync());

  var totalSalario = (saida - entrada) * salarioPorHora;

  print("Você vai receber: RS: $totalSalario.");
}
