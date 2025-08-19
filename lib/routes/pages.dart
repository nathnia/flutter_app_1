import 'package:flutter_application_1/pages/bottom_nav_page.dart';
import 'package:flutter_application_1/pages/cal_page.dart';
import 'package:flutter_application_1/pages/football_edit_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballEdit, page: () => FootballEditPage()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.bottomNav, page: () => BottomNavPage()),
  ];
}