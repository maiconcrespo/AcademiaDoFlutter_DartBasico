void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  paciente.removeLast();
  paciente.removeAt(0);

  for (var i = 0; i < paciente.length; i++) {
    print(
        '${paciente[i].split('|')[0]} tem ${paciente[i].split('|')[1]} anos.');
  }
//Dado a lista acima faça:
//Remova os 2 ultimo paciente da lista
//Imprima a lista acima na tela com o nome e a idade de cada paciente ex:
}
