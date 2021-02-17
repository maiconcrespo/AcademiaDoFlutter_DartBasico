void main(List<String> args) {
  var paciente = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  var cnome;
  var pnome;
  var snome;
  var idade;
  // var ocupacao;
  // var estado;
  var maior = [];
  // var familias = [];
  var familiaRahman = [];
  var familiaVerne = [];
  var familiaSilva = [];

  for (var i = 0; i < paciente.length; i++) {
    cnome = paciente[i].split('|')[0];
    pnome = cnome.split(' ')[0];
    snome = cnome.split(' ')[1];

    idade = int.parse(paciente[i].split('|')[1]);
    //  ocupacao = paciente[i].split('|')[2];
    // estado = paciente[i].split('|')[3];

    ///TODO:Como impleemtnar un codigo, dizendo que se, familias esta vazio ou ja contem esse nome, salta e se nao adiciona esse nome. queria fazer uma lista onde somente uma copia de cada nome aparece, e nao todos os sobrenomes. assim[Verne,Silva,Rahman]

    if (snome == 'Verne') {
      familiaRahman.add(pnome);
    }
    if (snome == 'Silva') {
      familiaSilva.add(pnome);
    }

    if (snome == 'Rahman') {
      familiaVerne.add(pnome);
    }

    if (idade > 18) {
      maior.add('${pnome}');

      continue;
    }
  }

  print('---------Os Maiores de 20 anos------');
  print('São em total ${maior.length}');
  print(maior);

  print('---------famlias------');
  //print('Familias ${familias}');

  print('------------------');
  print('Na familia Rahman:');

  for (var r in familiaRahman) {
    print(r);
  }
  print('------------------');
  print('Na familia Verne:');

  for (var r in familiaVerne) {
    print(r);
  }
  print('------------------');
  print('Na familia Silva:');

  for (var r in familiaSilva) {
    print(r);
  }
}
