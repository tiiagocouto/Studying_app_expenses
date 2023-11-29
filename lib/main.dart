import 'package:flutter/material.dart';
import 'package:myexpenses/models/transaction.dart';

main() => runApp(MyExpensesApp());

class MyExpensesApp extends StatelessWidget {
  const MyExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});

// criando um atributo final
  final transactions = [
    Transaction(
      id: 't1',
      titlle: 'Novo Tênis de Corrida',
      value: 299.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      titlle: 'Conta de Luz',
      value: 219.90,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: const Column(
        // Comando para ajustar posições de cima para baixo
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, // spaceAround = espaço ao redor
        // Comando para ajustar posições da esq para dir
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // stretch = esticar a area inteira
        children: <Widget>[
          SizedBox(
            child: Card(
              color: Colors.blue,
              child: Text('Grafico'),
              elevation: 5,
            ),
          ),
          Card(
            child: Text('Lista de Transações'),
          ),
        ],
      ),
    );
  }
}
