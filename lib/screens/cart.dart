import 'package:flutter/material.dart';
import 'package:task_4/common_widgets/appbar.dart';
import '../common_widgets/filled_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, this.firstButtonNavigation, this.secondButtonNavigation, this.thirdButtonNavigation});
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;
  final void Function()? thirdButtonNavigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreensAppbar(title: "Cart"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/avocado.png", width: 225, height: 225),
            const Text("No orders yet", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
             const SizedBox(
               width: 250,
               child: Text("Hit the orange button down below to Create an order",
                style: TextStyle(color: Colors.grey, fontSize: 20), textAlign: TextAlign.center),
             ),
            const SizedBox(height: 50,),
            const CustomFilledButton(title: "Start Ordering")
          ],
        ),
      ),
    );
  }
}