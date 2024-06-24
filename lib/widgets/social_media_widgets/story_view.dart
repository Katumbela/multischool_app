import 'dart:async';
import 'package:flutter/material.dart';

class UserStoryDetailPage extends StatefulWidget {
  final String name;
  final String profilePic;

  UserStoryDetailPage({required this.name, required this.profilePic});

  @override
  _UserStoryDetailPageState createState() => _UserStoryDetailPageState();
}

class _UserStoryDetailPageState extends State<UserStoryDetailPage> {
  late Timer _timer;
  bool _timerPaused = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    const duration =
        Duration(seconds: 3); // Tempo em segundos para fechar a página
    _timer = Timer.periodic(duration, (Timer timer) {
      if (!_timerPaused) {
        Navigator.pop(context); // Fecha a página ao término do timer
      }
    });
  }

  void _restartTimer() {
    _timer.cancel(); // Cancela o timer atual
    _startTimer(); // Inicia um novo timer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Imagem do story em tela cheia
          Positioned.fill(
            child: Hero(
              tag: widget.profilePic,
              child: Image.asset(
                widget.profilePic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Barra de status (topo da tela)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              color: Colors.black.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      _timer.cancel(); // Cancela o timer ao fechar manualmente
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(width: 40), // Espaço vazio para alinhar à direita
                ],
              ),
            ),
          ),
          // Botões de interação (parte inferior da tela)
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    // Implemente a ação desejada para o botão
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {
                    // Implemente a ação desejada para o botão
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  color: Colors.white,
                  onPressed: () {
                    // Implemente a ação desejada para o botão
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  color: Colors.white,
                  onPressed: () {
                    // Implemente a ação desejada para o botão
                  },
                ),
              ],
            ),
          ),
          // GestureDetector para pausar/reiniciar o timer
          GestureDetector(
            onTapDown: (details) {
              setState(() {
                _timerPaused = true; // Pausa o timer ao tocar na tela
              });
            },
            onTapUp: (details) {
              setState(() {
                _timerPaused = false; // Reinicia o timer ao soltar o toque
                _restartTimer();
              });
            },
          ),
        ],
      ),
    );
  }
}
