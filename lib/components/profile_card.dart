import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/models/user.dart';
import 'package:flutter_kakaotalk/screens/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        // 프로필카드를 눌렀을 때 프로필 화면이 나오도록
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(user: user),
            ),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              user.backgroundImage,
            ),
          ),
          title: Text(
            user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            user.intro,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
