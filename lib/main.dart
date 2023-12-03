import 'package:flutter/material.dart';
import 'package:myexpenses/models/transaction.dart';
import 'package:intl/intl.dart';

main() => runApp(const MyExpensesApp());

class MyExpensesApp extends StatelessWidget {
  const MyExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  //const MyHomePage({super.key});

// criando um atributo final
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 299.92,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
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
      body: Column(
        // Comando para ajustar posições de cima para baixo
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, // spaceAround = espaço ao redor
        // Comando para ajustar posições da esq para dir
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // stretch = esticar a area inteira
        children: <Widget>[
          const SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Grafico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                        // comando para setar distancias horizontais e verticais
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        // decoration serve para aplicar estilos no layout
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        )),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          // Interpolarização
                          // tr.value.toString(),
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(tr.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black87)),
                        // contrutor que formata a data apartir do import intl
                        Text(DateFormat('d MMM y').format(tr.date),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
