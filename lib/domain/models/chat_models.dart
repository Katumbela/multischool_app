class Chat {
  final String name;
  final String profilePic;
  final String time;
  List<Message> messages; // Lista de mensagens

  Chat({
    required this.name,
    required this.profilePic,
    required this.time,
    required this.messages,
  });
}

class Message {
  final String text;
  final String sender; // Identificador do remetente, pode ser 'me' ou outro

  Message({
    required this.text,
    required this.sender,
  });
}
