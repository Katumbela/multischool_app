import 'package:multischool_app/domain/models/chat_models.dart';
import 'package:multischool_app/theme/imageExporter.dart';

final List<Chat> chatList = [
  Chat(
    name: 'João Afonso',
    profilePic: AppUsers.joao,
    time: '10:00',
    messages: [
      Message(text: 'Olá, como você está?', sender: 'other'),
      Message(text: 'Estou bem, e você?', sender: 'me'),
      Message(text: 'Também estou bem, obrigado!', sender: 'other'),
    ],
  ),
  Chat(
    name: 'Mário Kenzo',
    profilePic: AppUsers.user_1,
    time: '09:30',
    messages: [
      Message(text: 'Vamos nos encontrar amanhã?', sender: 'me'),
      Message(text: 'Claro! Onde e que horas?', sender: 'other'),
      Message(text: 'Podemos nos encontrar no café às 14h.', sender: 'me'),
      Message(text: 'Ok, combinado.', sender: 'other'),
    ],
  ),
  Chat(
    name: 'Francisco Catumbela',
    profilePic: AppUsers.joao,
    time: '08:45',
    messages: [
      Message(text: 'Já enviou o relatório?', sender: 'me'),
      Message(
          text: 'Ainda não, estou terminando os últimos ajustes.',
          sender: 'other'),
      Message(text: 'Ok, me avise quando enviar.', sender: 'me'),
    ],
  ),
  Chat(
    name: 'Gonçalves Gm',
    profilePic: AppUsers.joao,
    time: '07:50',
    messages: [
      Message(text: 'Bom dia!', sender: 'other'),
      Message(text: 'Bom dia! Como está?', sender: 'me'),
      Message(text: 'Estou bem, obrigado!', sender: 'other'),
    ],
  ),
  Chat(
    name: 'Ana Souza',
    profilePic: AppUsers.user_1,
    time: '07:15',
    messages: [
      Message(text: 'Posso te ligar mais tarde?', sender: 'me'),
      Message(text: 'Claro, sem problema.', sender: 'other'),
      Message(text: 'Te ligo às 17h então.', sender: 'me'),
    ],
  ),
  Chat(
    name: 'Pedro Lima',
    profilePic: AppUsers.joao,
    time: '06:55',
    messages: [
      Message(text: 'Estou indo para a reunião.', sender: 'me'),
      Message(text: 'Boa sorte!', sender: 'other'),
      Message(text: 'Obrigado!', sender: 'me'),
    ],
  ),
];
