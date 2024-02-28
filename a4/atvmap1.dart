void main() {
  Map<String, double> precosFrutas = {
    'Maçã': 2.50,
    'Banana': 7.00,
    'Morango': 16.50,
    'Pera': 3.50,
    'Uva': 15.00
  };

  // Imprimir os nomes das frutas e seus preços
  precosFrutas.forEach((fruta, preco) {
    print('$fruta: R\$$preco');
  });
}