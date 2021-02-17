//Construa uma lista com 10 nomes.

void main() {
  List<String> nomes = [
    'Colten',
    'Elsa',
    'Maurice',
    'Alta',
    'Jeromy',
    'Nona',
    'Lane',
    'Lavern',
    'Dolly',
    'Kian'
  ];
//Imprima na tela cada nome com a frase: Sejá bem vindo NOME
  print(nomes);

  for (var i = 0; i < nomes.length; i++) {
    print('Seja bem vindo ${nomes[i]}');
  }
}
