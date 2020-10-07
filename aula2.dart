/**
 * Entendendo a sintaxe do dart
 * Curso de dart para iniciantes.
 */
main() {
  // print("Primeiro print");
  // minhaFuncao();
  // variaveis();
  // operadores();
  concatenacao();
}

/**
 * Função (parecido com C)
 */
void minhaFuncao() {
  print('Segundo print');
}

/**
 * Variaveis em Dart
 */
void variaveis() {
  // Variavel dinamico
  var x = 'hello';
  print(x);

  // Tipo inteiro
  int y = 1;
  print(y);

  // Tipo flutuante - 1.0
  double a = 1;
  print(a);
 }

/**
 * Operadores matemáticos
 */
void operadores() {
  print(1 + 1);
  print(2 - 1);
  print(2 * 2);
  print(10 / 2);
  print(10 % 2);
}

void concatenacao() {
  var texto1 = "hello ";
  var texto2 = " World!";
  print(texto1 + texto2);
}