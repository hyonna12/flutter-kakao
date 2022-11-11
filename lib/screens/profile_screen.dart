import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/components/round_icon_button.dart';
import 'package:flutter_kakaotalk/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // 나중에 배경 & 프로필 이미지 수정하기!!!
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
