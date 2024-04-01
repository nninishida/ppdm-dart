import 'atv1.dart';

void main() {
  Pessoa pessoa = Pessoa("Vedilson", 29, 1245678900);

  print("Antes:");
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("CPF: ${pessoa.cpf}");

  pessoa.nome = "Leandro";
  pessoa.idade = 39;
  pessoa.cpf = 98765432100;

  print("\nDepois:");
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("CPF: ${pessoa.cpf}");
}
