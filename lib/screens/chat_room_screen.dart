import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/components/my_chat.dart';
import 'package:flutter_kakaotalk/components/other_chat.dart';
import 'package:flutter_kakaotalk/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  // 내가 입력한 글을 저장할 리스트
  final List<MyChat> chats = [];
  // 내가 입력한 글을 제어하기 위한 컨트롤러
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            Icon(FontAwesomeIcons.search, size: 20),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars, size: 20),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      TimeLine(time: "2021년 1월 1일 금요일"),
                      OtherChat(
                        name: "홍길동",
                        text: "새해 복 많이 받으세요",
                        time: "오전 10:10",
                      ),
                      MyChat(
                        text: "선생님도 많이 받으십시오.",
                        time: "오후 2:15",
                      ),
                      // 채팅 입력 ui를 이용하여 chats에 새 글이 추가되면 화면에 나열됨
                      ...List.generate(chats.length, (index) => chats[index]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
