void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  for (var p in paciente) {
    print(p.split('|')[0] + ' tem ' + p.split('|')[1] + ' anos');
  }

//Imprima a lista acima na tela com o nome e a idade de cada paciente ex

  for (var i = 0; i < paciente.length; i++) {
    print(
        '${paciente[i].split('|')[0]} tem ${paciente[i].split('|')[1]} anos.');
  }
}
