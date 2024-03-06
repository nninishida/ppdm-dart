void main() {
  String frase = "bom dia princesa, bom dia rainha, o professor dá aula, o cachorro pula ";
 
  Map<String, int> estatisticas = {};
 
  for (String palavra in frase.split(' ')) {
    estatisticas[palavra] = (estatisticas[palavra] ?? 0) + 1;
  }

  print('Estatísticas de palavras:');
  estatisticas.forEach((palavra, frequencia) {
    print('$palavra: $frequencia vezes');
  });
}