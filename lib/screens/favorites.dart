import 'package:flutter/material.dart';
import 'package:task_4/common_widgets/appbar.dart';
import '../common_widgets/filled_button.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreensAppbar(title: "Favorites"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/dish.png", width: 225, height: 225),
            const Text("No favorites yet", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 340,
              child: Text("your order will be delivered under 30 mins of placing your order",
                style: TextStyle(color: Colors.grey, fontSize: 20), textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 50,),
            const CustomFilledButton(title: "Explore")
          ],
        ),
      ),
    );
  }
}