import 'package:flutter/material.dart';
import 'package:multischool_app/config/chat_datas.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chatList[index].profilePic),
          ),
          title: Text(
            chatList[index].name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            chatList[index].messages.last.text,
            style: TextStyle(color: Colors.white70),
          ),
          trailing: Text(
            chatList[index].time,
            style: TextStyle(color: Colors.white70),
          ),
          onTap: () {
            // Navegação ou ação ao tocar na conversa
          },
        );
      },
    );
  }
}
