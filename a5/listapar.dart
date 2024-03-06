void main() {
  // Lista de números predefinida
  List<int> numeros = [2, 7, 10, 14, 21, 26, 30, 35, 40, 45];

  // Imprime os números pares da lista
  print('Números pares na lista:');
  for (int numero in numeros) {
    if (numero % 2 == 0) {
      print(numero);
    }
  }
}
