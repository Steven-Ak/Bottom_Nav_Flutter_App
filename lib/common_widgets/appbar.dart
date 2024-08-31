import 'package:flutter/material.dart';

class ScreensAppbar extends StatelessWidget implements PreferredSizeWidget{
  const ScreensAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title , style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 250, 74, 12),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(56);
}
