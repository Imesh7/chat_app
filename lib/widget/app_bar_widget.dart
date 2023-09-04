import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const AppBarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
