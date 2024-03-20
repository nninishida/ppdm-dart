class Aviao {
String modelo;
String companhia;
int velocidadeMaxima;
bool voando;

Aviao(this.modelo, this.companhia, this.velocidadeMaxima, this.voando);

void decolar() {
voando = true;
print('$modelo decolou!');
}

void pousar() {
voando = false;
print('$modelo pousou com segurança.');
}

void voar() {
if (voando) {
print('$modelo está voando a uma velocidade de $velocidadeMaxima km/h.');
} else {
print('$modelo precisa decolar antes de voar!');
}
}

void status() {
if (voando) {
print('$modelo está no ar.');
} else {
print('$modelo está no chão.');
}
}
}

void main() {
Aviao meuAviao = Aviao('Boeing 747', 'Delta Airlines', 900, false);

meuAviao.decolar();
meuAviao.voar();
meuAviao.status();
meuAviao.pousar();
meuAviao.status();
}