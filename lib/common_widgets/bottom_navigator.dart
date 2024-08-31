import 'package:flutter/material.dart';
import 'package:task_4/screens/all_screens.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {
  int selectedPage = 0;

  late List<Widget> _pages;
  late List<BottomNavigationBarItem> _tabs;

  @override
  void didChangeDependencies() {
      _pages = [
        HomeScreen(
            firstButtonNavigation: cartNav,
            secondButtonNavigation:favNav,
            thirdButtonNavigation: historyNav
        ),
        CartScreen(
          firstButtonNavigation: homeNav,
          secondButtonNavigation: favNav,
          thirdButtonNavigation: historyNav,
        ),
        FavoritesScreen(
          firstButtonNavigation: homeNav,
          secondButtonNavigation: cartNav,
          thirdButtonNavigation: historyNav,
        ),
        HistoryScreen(
          firstButtonNavigation: homeNav,
          secondButtonNavigation: cartNav,
          thirdButtonNavigation: favNav,
        )
      ];
      super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    _tabs = [
      BottomNavigationBarItem(icon: selectedPage == 0
          ? Image.asset("assets/icons/homeselected.png")
          :Image.asset("assets/icons/homeicon.png"), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ""),
      const BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded), label: "")
    ];

    return Scaffold(
      body: _pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedPage,
          items: _tabs,
          onTap: (newIndex) => updateSelectedPage(newIndex)),
    );
  }
  void updateSelectedPage(int newIndex){
    setState(() {
      selectedPage = newIndex;
    });
  }

  void homeNav(){
    updateSelectedPage(0);
  }

  void cartNav(){
    updateSelectedPage(1);
  }

  void favNav(){
    updateSelectedPage(2);
  }

  void historyNav(){
    updateSelectedPage(3);
  }
}