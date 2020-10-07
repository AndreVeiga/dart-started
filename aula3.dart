/**
 * Estruturas de decisão
 */
main() {
  condicionais();
}

/**
 * Estrutura e variaveis condicionais
 */
void condicionaisSimplesEcompostos() {
  bool test1 = true;
  var test2 = true;

  if(test1 && test2) {
    print('Verdadeiro :) ');
  } else {
    print('Falso :( ');
  }

}

/**
 * (>) maior que  - (>=) maior ou igual
 * (<) menor que  - (=<) menor ou igual
 * == igual - != diferente
 */
void condicionais() {
  int one = 1;
  int two = 2;
  int x = 1;
  print(one == two);
  print(one != two); 
  print(one > x);
  print(one >= x);
}