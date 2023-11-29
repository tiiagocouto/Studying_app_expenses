// definir atributos dessa classe
class Transaction {
  final String id; //id da transação
  final String titlle; // titulo da tarnsação
  final double value; // valor da transação
  final DateTime date; // data da tarnsação

// vai receber atributos nomeados com o par de chaves
  Transaction({
    required this.id,
    required this.titlle,
    required this.value,
    required this.date,
  });
}
