import 'package:chat_app_ui/ui/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class UserChatWidget extends StatelessWidget {
  const UserChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://randomwordgenerator.com/img/picture-generator/53e1d24b4b51af14f1dc8460962e33791c3ad6e04e507440742f7cd0954ccc_640.jpg',
                ),
              ),
              title: Text("title"),
              subtitle: Text("sub title"),
            ),
            Divider(
              thickness: .2,
            )
          ],
        ),
      ),
    );
  }
}
