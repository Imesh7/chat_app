import 'package:chat_app_ui/ui/home/widget/user_chat_widget.dart';
import 'package:chat_app_ui/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        text: 'Home',
      ),
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) => const UserChatWidget()),
    );
  }
}
