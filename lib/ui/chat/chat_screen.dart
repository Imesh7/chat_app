import 'package:chat_app_ui/ui/chat/model/chat_model.dart';
import 'package:chat_app_ui/ui/chat/widget/bottom_chat_sent_message_bar.dart';
import 'package:chat_app_ui/ui/chat/widget/chat_buble.dart';
import 'package:chat_app_ui/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> chatList = [
    ChatModel("I am a chat bot, How can I help you, ask your question", true,
        DateTime.now()),
    ChatModel("okay", false, DateTime.now()),
    ChatModel("what is your name", true, DateTime.now()),
    ChatModel("I am Julia", false, DateTime.now()),
    ChatModel("I am a chat bot", true, DateTime.now()),
    ChatModel("okay", false, DateTime.now()),
    ChatModel("what is your name", true, DateTime.now()),
    ChatModel("I am Julia", false, DateTime.now()),
    ChatModel("I am a chat bot", true, DateTime.now()),
    ChatModel("okay", false, DateTime.now()),
    ChatModel("what is your name", true, DateTime.now()),
    ChatModel("I am Julia", false, DateTime.now()),
    ChatModel("I am a chat bot", true, DateTime.now()),
    ChatModel("okay", false, DateTime.now()),
    ChatModel("what is your name", true, DateTime.now()),
    ChatModel("I am Julia", false, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        text: 'CHAT',
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 160,
              child: ListView.builder(
                  itemCount: chatList.length,
                  itemBuilder: (context, index) => ChatBubble(
                        text: chatList[index].chatMessage,
                        isSender: chatList[index].isSender,
                        time: chatList[index].time,
                      )),
            ),
            const Positioned(bottom: 0, child: BottomChatSentMessageBar()),
          ],
        ),
      ),
    );
  }
}
