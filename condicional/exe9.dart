/**
 * Escreva um algoritmo que leia dois valores D e DS, correspondentes a 
 * um dia do mês, e ao dia da semana que corresponde a ele 
 * (1-domingo 2-segunda 3-terça 4-quarta 5-quinta 6-sexta 7-sábado).
 * Calcule e escreva em que dia da semana caiu o dia primeiro do mês do 
 * dia digitado. 
 * Comece com o dia 01/01 caiu em um domingo e que fevereiro tem 28 dias.
 * Exemplo: dia 10 no mes e 3 (terça) na semana. Resposta 1 (domingo)
 * Exemplo: dia 30 no mes e 4 (quarta) na semana. Resposta 3 (terça feira)
 * Para validação, ver calendário do ano de 2017.
 */
import "dart:io";

main() {
  print("Digite o mês: ");
  var mes = int.parse(stdin.readLineSync());

  print("Digite o dia: ");
  var dia = int.parse(stdin.readLineSync());

  var diasNoAno = [0, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
  var diaMes = ((diasNoAno[(mes)] + dia) % 7);
  switch (diaMes) {
    case 0:
      print("Sábado");
      break;
    case 1:
      print("Domingo");
      break;
    case 2:
      print("Segunda-feira");
      break;
    case 3:
      print("Terça-feira");
      break;
    case 4:
      print("Quarta-feira");
      break;
    case 5:
      print("Quinta-feira");
      break;
    case 6:
      print("Sexta-feira");
      break;
    default:
      print("Sem especificação.");
  }
}
