import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(chat.image),
            ),
            title: Text(
              chat.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Text(chat.content),
            contentPadding: const EdgeInsets.all(0),
          ),
        ),
        Column(
          children: [
            Text(
              chat.time,
              style: TextStyle(color: Color(0xFFa5a5a5), fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            // 읽지 않은 메시지가 존재할 때 메시지 개수를 알려줌
            if (chat.count != "0")
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFde6344)),
                child: Text(
                  chat.count,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
          ],
        )
      ],
    );
  }
}
