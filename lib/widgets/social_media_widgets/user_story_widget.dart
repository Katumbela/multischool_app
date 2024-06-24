import 'package:flutter/material.dart';
import 'package:multischool_app/widgets/social_media_widgets/story_view.dart';

class UserStoryWidget extends StatelessWidget {
  final String name;
  final String profilePic;

  UserStoryWidget({required this.name, required this.profilePic});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserStoryDetailPage(
              name: name,
              profilePic: profilePic,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: profilePic, // Tag única para a animação Hero
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profilePic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
