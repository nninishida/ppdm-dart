void main() {

  //lista de números
  List<double> numeros = [10.0, 8.0, 9.0, 7.0, 10.0];

  //calcular a soma dos números
  double soma = 0.0;
  for (double numero in numeros) {
    soma += numero;
  }
  //calcular a média
  double media = soma / numeros.length;
  
  //imprimir a media
  print("A média é: $media");
}