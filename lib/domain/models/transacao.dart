// transacao.dart
class Transacao {
  final DateTime data;
  final String descricao;
  final double valor;
  final String type;

  Transacao({
    required this.data,
    required this.descricao,
    required this.valor,
    required this.type,
  });
}
