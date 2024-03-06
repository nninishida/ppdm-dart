void main(){
  Map<int, String>contatos = Map();
  contatos[1] = "Lumi: (15)991919367";
  contatos[2] = "Vinicius: (15)991964155";
  contatos[3] = "Rebeka: (15)981230971";
  print(contatos);

  //adicionar contato
  print("adicionando contato");
  contatos.putIfAbsent(4, () => "Nicole: (15)988172201");
  print(contatos);

  //editar contato
  print("editando contato");
  contatos[1] = "Wanda: (15)981230971";
  print(contatos);

  //remover contato
  print("removendo contato");
  contatos.remove(4);
  print(contatos);
}