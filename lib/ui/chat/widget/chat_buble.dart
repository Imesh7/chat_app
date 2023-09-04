import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final DateTime time;
  const ChatBubble(
      {super.key,
      required this.text,
      required this.isSender,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isSender ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .75),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 1.5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(text, style: const TextStyle(fontSize: 18)),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "${time.minute} h",
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    isSender
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.thumb_up_off_alt_outlined,
                                    size: 15,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.thumb_down_off_alt_outlined,
                                    size: 15,
                                  )),
                            ],
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
