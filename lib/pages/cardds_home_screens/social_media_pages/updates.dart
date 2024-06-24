import 'package:flutter/material.dart';
import 'package:multischool_app/config/chat_datas.dart';
import 'package:multischool_app/domain/models/story_user_model.dart';
import 'package:multischool_app/pages/cardds_home_screens/social_media_pages/chat_details_page.dart';
import 'package:multischool_app/theme/imageExporter.dart';
import 'package:multischool_app/theme/input_decoration.dart';
import 'package:multischool_app/utils/abreviate_strings.dart';
import 'package:multischool_app/widgets/social_media_widgets/user_story_widget.dart';

class UpdatesSocialTab extends StatefulWidget {
  const UpdatesSocialTab({Key? key}) : super(key: key);

  @override
  _UpdatesSocialTabState createState() => _UpdatesSocialTabState();
}

class _UpdatesSocialTabState extends State<UpdatesSocialTab> {
  final List<UserStory> usersStory = [
    UserStory(name: 'João afonso', profile_pic: AppUsers.joao),
    UserStory(name: 'Mário Kenzo', profile_pic: AppUsers.user_1),
    UserStory(name: 'Francisco Catumbela', profile_pic: AppUsers.joao),
    UserStory(name: 'Gonçalves Gm', profile_pic: AppUsers.joao),
    UserStory(name: 'Mário Kenzo', profile_pic: AppUsers.user_1),
    UserStory(name: 'João afonso', profile_pic: AppUsers.joao),
    UserStory(name: 'Mário Kenzo', profile_pic: AppUsers.user_1),
    UserStory(name: 'Mário Kenzo', profile_pic: AppUsers.user_1),
    UserStory(name: 'João afonso', profile_pic: AppUsers.joao),
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: usersStory.map((user) {
                  return UserStoryWidget(
                    name: StringUtils.abbreviate(user.name),
                    profilePic: user.profile_pic,
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _searchController,
                decoration: AppInputs.white_input_app.copyWith(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Pesquisar atualizações',
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conversas',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(Icons.add_circle_outlined, color: Colors.white, size: 20),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  // Verifica se há mensagens válidas
                  if (chatList[index].messages.isNotEmpty) {
                    String lastMessage = chatList[index].messages.last.text;
                    String time = chatList[index].time;

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(chatList[index].profilePic),
                      ),
                      title: Text(
                        chatList[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        lastMessage,
                        style: TextStyle(color: Colors.white70),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        time,
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ChatDetailPage(chatData: chatList[index]),
                          ),
                        );
                      },
                    );
                  } else {
                    // Caso não haja mensagens, pode retornar um widget padrão ou vazio
                    return SizedBox.shrink();
                  }
                },
              ),
            ),
            // Aqui pode adicionar o campo de entrada de mensagem e botão de enviar
            // Exemplo:
            // _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Digite sua mensagem...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Lógica para enviar a mensagem
            },
          ),
        ],
      ),
    );
  }
}
