/**
 * Uma autolocadora aluga seus carros com uma taxa fixa por dia mais uma taxa por 
 * km rodado,e oferece desconto percentual sobre a taxa fixa de aluguel por dia. 
 * Escrever um algoritmo que lê a taxa fixa por dia (em reais), o percentual de 
 * desconto na taxa fixa por dia, a taxa por Km rodado (em reais), o número de 
 * dias e o número de Km rodados. O algoritmo deve calcular e escrever: o valor 
 * total do aluguel (já aplicado o desconto), o percentual de desconto, o valor 
 * do desconto em reais, o número de dias, e a quilometragem rodada. 
 * Dica: O desconto incide apenas sobre a taxa diária
 */

import "dart:io";

main() {
  print("Digite a taxa fixa por dia: ");
  var taxaFixaDiaria = double.parse(stdin.readLineSync());

  print("Digite o valor de desconto por dia: ");
  var descFixoDiario = double.parse(stdin.readLineSync());

  print("Digite a taxa por Km rodado: ");
  var valorKmRodado = double.parse(stdin.readLineSync());

  print('Digite o total de dias com o carro alugado: ');
  var diasAlugado = double.parse(stdin.readLineSync());

  print('Digite a Quilometragem rodado do carro');
  var kmRodado = double.parse(stdin.readLineSync());

  var valorPorKmRodado = kmRodado * valorKmRodado;
  var valorTotalDia = taxaFixaDiaria * diasAlugado;
  var descTotalPorDia = descFixoDiario * diasAlugado;

  var resultado = (valorTotalDia + valorPorKmRodado) - descTotalPorDia;
  var desc = (descTotalPorDia / valorTotalDia) * 100;
  var descDiaReal = descFixoDiario * diasAlugado;

  print("O valor total foi de $resultado reais");
  print("O percentual de desconto foi de $desc %");
  print("O valor de desconto em reais foi $descDiaReal");
  print("A quantidade de dias: $diasAlugado e rodou $kmRodado Kilometro(s).");
}
