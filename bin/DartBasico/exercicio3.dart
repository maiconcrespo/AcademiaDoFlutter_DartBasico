//Crie uma variável com o nome Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon
//Imprima a quantidade de nomes que essa variavel tem.
void main() {
  var nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';

  var nomesarray = nome.split(' ');

  print(nomesarray);
  print(nomesarray.length);

  print('O numero de Palavras é ${nomesarray.length}');

  for (var i = 0; i < nomesarray.length; i++) {
    nomesarray.remove('de');
    nomesarray.remove('e');

    print('${i + 1}º nome é ${nomesarray[i]}');
  }

  print('O numero de nomes total é ${nomesarray.length}');
}
