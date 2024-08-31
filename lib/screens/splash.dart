import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common_widgets/bottom_navigator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navToNextScreen(BuildContext context) async{
  await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomNav())
      );
  });
  }
  @override
  Widget build(BuildContext context) {
    navToNextScreen(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 74, 12),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
              top: 50,
              left: 20,
              child: Text("FOOD\nFOR EVERYONE", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold))),
          Positioned(
          top: 105,
          right: 150,
          child: SizedBox(
              width: 500,
              height: 500,
              child: Image.asset("assets/images/burger.png"))),

          Positioned(
              top: 160,
              left: 180,
              child: SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.asset("assets/images/icecream.png"))),

          Positioned(bottom: 230,
              child: SizedBox(
                      width: 315,
                      height: 70,
                      child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35)),
                          child:  Center(child: Text("yum bites",
                              style: GoogleFonts.yellowtail(textStyle: const TextStyle(fontSize: 50)))
                          )
                      ),
            )
          ),
          Positioned(
              bottom: 90,
              left: 240,
              child: SizedBox(
                  width: 275,
                  height: 275,
                  child: Image.asset("assets/images/noodles.png"))),

          Positioned(
              bottom: 100,
              right: 250,
              child: SizedBox(
                  width: 275,
                  height: 275,
                  child: Image.asset("assets/images/salad.png"))),

          Positioned(
              bottom: -60,
              right: 220,
              child: SizedBox(
                  width: 275,
                  height: 275,
                  child: Image.asset("assets/images/taco.png"))),
        ],
      ),
    );
  }
}