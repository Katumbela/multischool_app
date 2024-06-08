import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem extends StatefulWidget {
  final String imageUrl;
  final String title;

  CardItem({required this.imageUrl, required this.title});

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool _isPressed = false;

  void _togglePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _togglePressed,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: _isPressed ? Theme.of(context).primaryColor : Colors.white,
          border: Border.all(width: .2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( 
                child: SvgPicture.asset(
                  widget.imageUrl,
                  width: 40,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
