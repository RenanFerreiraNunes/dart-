import 'dart:io';

void main() {
  print('='*70);
  print('EXERCÍCIO N: ADD, REMOVEAT, SWITCH, VERIFICAÇÃO DE LISTA VAZIA, VALIDADE DE ÍNDICE E FOR IN');
  print('='*70);

  //Criando uma lista vazia
  List<String> frutas = [];
  
  while (true) {
    print('');
    print('Escolha uma opção: ');
    print('1- Adicionar uma fruta');
    print('2- Remover uma fruta');
    print('sair - Sair do programa');
     // Entrada de dados
      String? opcao = stdin.readLineSync();

    switch(opcao) {
      case "1": 
        stdout.write('Adicione uma fruta: ');
        String frutaItem = stdin.readLineSync()!;

          //Adicionando frutas na lista
          frutas.add(frutaItem);

          //Imprimindo a lista com for
          print('');
          print('Fruta adicionada com sucesso!');
          print('');
          for (var fruta in frutas) {
            print(fruta);
          }
  
      break;
      case "2": 
        //Verificação de lista vazia
        if (frutas.isEmpty) {
          print('');
          print('Lista vazia!');
          print('');
          break;
        }

        stdout.write('Informe o índice da fruta que deseja remover: ');
        int indice = int.parse(stdin.readLineSync()!);

        //Verificando se o índice está no alcance
        if (indice >= 0 && indice < frutas.length) {
          //Removendo o número com o removeat
          frutas.removeAt(indice);

          print('');
          print('Fruta removida com sucesso!');
          print('');

          //loop for pra mostrar a lista após a remoção
          for (var fruta in frutas) {
            print(fruta);
          }
        } else {
          print('');
          print('Índice inválido!');
          print('');
        }
        break;
      case "sair":
          if (frutas.isEmpty) {
          print('');
          print('Lista vazia!');
          print('');
          break;
        }
        //loop for pra mostrar a lista após a remoção
          for (var fruta in frutas) {
            print(fruta);
          }
        return;
      default: 
        print('opção inválida!');
      
    }
  }
}