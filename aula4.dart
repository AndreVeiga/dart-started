/**
 * Aula 4: Comando de iteração
 */

import "dart:io";

main() {
  print("Digite o valor maximo do contador:");
  var num1 = int.parse(stdin.readLineSync());

  for (int i = 1; i <= num1; i++) {
    print("$i contando com FOR...");
  }

  var cont = 1;
  while (cont <= num1) {
    print("$cont contando com WHILE...");
    cont++;
  }

  var cont2 = 1;
  do {
    print("$cont2 contando com DO WHILE");
    cont2++;
  } while (cont2 <= num1);
}
