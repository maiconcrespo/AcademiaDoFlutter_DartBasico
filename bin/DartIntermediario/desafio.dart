import 'dart:collection';

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  int maior = 0;
  int fem = 0;
  int masc = 0;

  var nome;
  int idade;
  var listadePessoas = [];
  var sexo;
  var persons;
  Map<dynamic, dynamic> mapaIndividual;
  var listadenomesmaior = [];

  print('1 - Remover os duplicados:');
  print('');
//? - 1
  persons = pessoas.toSet();

  persons.forEach(print);
  print('');
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  print('');

  //convertendo em mapa
  persons.forEach((p) {
    nome = p.split('|')[0];
    idade = int.parse(p.split('|')[1]);
    sexo = p.split('|')[2];

    mapaIndividual = {
      'nome': nome,
      'idade': idade,
      'sexo': sexo,
    };

    // mapaPersonas = {
    //   'nome': nome,
    //   'dados': {
    //     'idade': idade,
    //     'sexo': sexo,
    //   }
    // };
    //mapaPersonas.putIfAbsent('nome', () => nome);
    // mapaPersonas = {'nome': nome};
    //mapaPersonas = {'idade': idade};
    //mapaPersonas = {'sexo': sexo};
    //mapaPersonas.putIfAbsent('idade', () => idade);
    //mapaPersonas.putIfAbsent('sexo', () => sexo);
    print(mapaIndividual);
//?------------- - 2
    if (sexo.contains('Masculino')) {
      masc++;
    } else if (sexo.contains('Feminino')) {
      fem++;
    }
//? ------------- 3
    if (idade >= 18) {
      listadenomesmaior.add(nome);
      maior++;
    }
    listadePessoas.add(mapaIndividual);
  });

  print('Tem ${masc} Pessoas do sexo Masculino');
  print('Tem ${fem} Pessoas do sexo Feminino');

  //
  //
  //
  print('');
  print(
      '// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos ');
  print('//     e mostre a quantidade de pessoas com mais de 18 anos');
  print('');

  print('Os maiores de 18 são em total ${maior}:');
  listadenomesmaior.forEach(print);

  //
  //
  //
  print('// 4 - Encontre a pessoa mais velha.');
  print('');

  //? ------------ 4

  //print('Meus dados agora ' + listadePessoas.toString());
//  print('Ordenando maior para o menor');
  //listadePessoas.sort((a, b) => (((a['idade']) < (b['idade'])) ? 1 : 0));
  //print('Meus dados agora ' + listadePessoas.toString());
  //listadePessoas.sort((a, b) => a['idade'].compareTo(b['idade']));
  //print('Meus dados agora de outro jeito ' + listadePessoas.toString());
  //fazia assim mas                       //me faltavam esses parenteses
  listadePessoas.sort((n1, n2) => (n1['idade'].compareTo(n2['idade'])));
  print(
      'A pessoa mais velha da lista é ${listadePessoas.last['nome']} com ${listadePessoas.last['idade']} anos');
}
//list.sort((a, b) => a['item'].compareTo(b['item']));
//numbers.sort((a, b) => a.length.compareTo(b.length));
