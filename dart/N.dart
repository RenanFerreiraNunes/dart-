import 'dart:io';

void main() {
  print('='*70);
  print('EXERCÍCIO N: ADD, REMOVEAT, SWITCH, VERIFICAÇÃO DE LISTA VAZIA, VALIDADE DE ÍNDICE E FOR IN');
  print('='*70);

  //Criando uma lista vazia
  List<int> numeros = [];
  
  while (true) {
    print('');
    print('Escolha uma opção: ');
    print('1- Adicionar um número par');
    print('2- Remover um número par');
    print('sair - Sair do programa');
     // Entrada de dados
      String? opcao = stdin.readLineSync();

    switch(opcao) {
      case "1": 
        stdout.write('Escreva um número par: ');
        int num = int.parse(stdin.readLineSync()!);

        //Validação do número par
        if (num % 2 != 0) {
          print('Esse número não é par!');
        } else {
          //Adicionando números na lista
          numeros.add(num);

          //Imprimindo a lista com for
          print('');
          print('Número adicionado com sucesso!');
          print('');
          for (var numero in numeros) {
            print(numero);
          }
        }
        break;
      case "2": 
        //Verificação de lista vazia
        if (numeros.isEmpty) {
          print('');
          print('Lista vazia!');
          print('');
          break;
        }

        stdout.write('Informe o índice do número que deseja remover: ');
        int indice = int.parse(stdin.readLineSync()!);

        //Verificando se o índice está no alcance
        if (indice >= 0 && indice < numeros.length) {
          //Removendo o número com o removeat
          numeros.removeAt(indice);

          print('');
          print('Número par removido com sucesso!');
          print('');

          //loop for pra mostrar a lista após a remoção
          for (var numero in numeros) {
            print(numero);
          }
        } else {
          print('');
          print('Índice inválido!');
          print('');
        }
        break;
      case "sair":
          if (numeros.isEmpty) {
          print('');
          print('Lista vazia!');
          print('');
          break;
        }
        //loop for pra mostrar a lista após a remoção
          for (var numero in numeros) {
            print(numero);
          }
        return;
      default: 
        print('opção inválida!');
        
    }
      

  }
}