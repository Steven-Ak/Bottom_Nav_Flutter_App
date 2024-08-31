import 'package:flutter/material.dart';
import 'package:task_4/common_widgets/appbar.dart';
import 'package:task_4/common_widgets/filled_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreensAppbar(title: "Home"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/cupcake.png", width: 225, height: 225),
            const Text("No internet Connection", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            const Text("Your internet connection is currently not available please check or try again",
                style: TextStyle(color: Colors.grey, fontSize: 20), textAlign: TextAlign.center,),
            const SizedBox(height: 50,),
            const CustomFilledButton(title: "Try Again")
          ],
        ),
      ),
    );
  }
}