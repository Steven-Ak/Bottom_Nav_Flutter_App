import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key, required this.title});
  final String title;
  void onPressed () {
    print("$title pressed");
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
        style: FilledButton.styleFrom(backgroundColor: const Color.fromARGB(255, 250, 74, 12),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 120),
            textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
      child: Text(title),
        );
  }
}
