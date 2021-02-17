void main() {
  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

// Remova da lista os pacientes que são menor de idade.
// Imprima a lista acima na tela com o nome e a idade de cada paciente ex:

  for (var i = 0; i < paciente.length; i++) {
    var pnome = paciente[i].split('|')[0];
    var idade = int.parse(paciente[i].split('|')[1]);

    if (idade > 18) {
      var resposta = '${pnome} tem ${idade} anos.';
      print(resposta);
    }
  }
}
