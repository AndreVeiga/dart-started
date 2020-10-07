/**
 * Faça um algoritmo que leia um valor em segundo e e converta 
 * esse valor em Horas, Minutos e Segundos. 
 * Dica:1 hora = 3600 segundos e 1 minuto = 60 segundos
 */
import "dart:io";

main() {
  print("Digite o valor em segundos: ");
  var segundos = int.parse(stdin.readLineSync());
  var horas = (segundos / 3600).truncate();
  var minutos = ((segundos % 3600) / 60).truncate();
  var resto = segundos - ((horas * 3600) + (minutos * 60));

  print("O valor é  horas: $horas minutos: $minutos e segundos: $resto");
}
