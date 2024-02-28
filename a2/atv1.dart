void calcularMinimoMoedas(int valor) {
  List<int> moedas = [100, 50, 10, 5, 1];
  List<int> quantidadeMoedas = List<int>.filled(moedas.length, 0);

  for (int i = 0; i < moedas.length; i++) {
    quantidadeMoedas[i] = valor ~/ moedas[i];
    valor %= moedas[i];
  }

  for (int i = 0; i < moedas.length; i++) {
    if (quantidadeMoedas[i] > 0) {
      print("${quantidadeMoedas[i]} moeda(s) de B\$ ${moedas[i]},00");
    }
  }
}

void main() {
  int valor = 298;
  print("Para o valor de B\$ $valor,00, são necessárias as seguintes moedas:");
  calcularMinimoMoedas(valor);
}
