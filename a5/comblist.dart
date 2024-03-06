void main() {
  // Lista de frutas
  List<String> frutas = ['Pera', 'Banana', 'Manga', 'Carambola', 'Abacaxi'];

  // Lista de animais
  List<String> animais = ['Vaca', 'Gato', 'Anta', 'Rinoceronte', 'Lontra'];

  // Combina as listas de frutas e animais
  List<String> combinacao = [...frutas, ...animais];

  // Imprime a lista combinada
  print('Listas Combinadas:');
  combinacao.forEach((elemento) {
    print(elemento);
  });
}
