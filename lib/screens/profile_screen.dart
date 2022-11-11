import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("ProfileScreen")),
    );
  }
}
