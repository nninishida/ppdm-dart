class Pessoa {
  String nome;
  int idade;
  String endereco;
  String profissao;
  String cpf;
  String rg;

  Pessoa(this.nome, this.idade, this.endereco, this.profissao, this.cpf, this.rg);

  void imprimirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Endereço: $endereco');
    print('Profissão: $profissao');
    print('CPF: $cpf');
    print('RG: $rg');
  }

  void atualizarEndereco(String novoEndereco) {
    endereco = novoEndereco;
    print('Endereço atualizado para: $endereco');
  }
}

void main() {
  Pessoa pessoa = Pessoa('João', 30, 'Rua A, 123', 'Engenheiro', '123.456.789-10', '987654321');

  pessoa.imprimirInformacoes();

  // Atualizando o endereço
  pessoa.atualizarEndereco('Avenida B, 456');
  pessoa.imprimirInformacoes();
}