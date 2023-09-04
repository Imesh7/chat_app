import 'package:flutter/material.dart';

class BottomChatSentMessageBar extends StatelessWidget {
  const BottomChatSentMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type Message...",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          prefixIcon: Icon(
                            Icons.message,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(25)),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.send))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
