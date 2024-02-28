void main() {
  Map<String, double> precosFrutas = {
    'Melancia': 8.50,
    'Kiwi': 7.00,
    'Abacaxi': 16.50,
    'Melão': 5.50,
    'Pitaya': 15.00
  };

  // Imprimir os nomes das frutas e seus preços
  precosFrutas.forEach((fruta, preco) {
    print('$fruta: R\$$preco');
  });
}