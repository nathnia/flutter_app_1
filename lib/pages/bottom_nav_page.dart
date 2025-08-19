import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bottom_nav_controller.dart';
import 'cal_page.dart';
import 'football_page.dart';
import 'profile_page.dart';

class BottomNavPage extends StatelessWidget {
  final BottomNavController navC = Get.put(BottomNavController());

  final pages = [
    CalPage(),
    FootballPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          // appBar: AppBar(title: Text("Bottom Nav with GetX")),
          body: IndexedStack(
            index: navC.currentIndex.value,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navC.currentIndex.value,
            onTap: navC.changeTab,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
              BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "Football"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ));
  }
}
