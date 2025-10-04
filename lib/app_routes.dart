import 'package:flutter/cupertino.dart';
import 'package:navigation_exp_434/home_page.dart';
import 'package:navigation_exp_434/next_page.dart';
import 'package:navigation_exp_434/profile_page.dart';
import 'package:navigation_exp_434/setting_page.dart';
import 'package:navigation_exp_434/splash_page.dart';

class AppRoutes{

  static final String splash = "/";
  static final String home = "/home";
  static final String detail = "/detail";
  static final String profile = "/profile";
  static final String setting = "/setting";

  static Map<String, WidgetBuilder> mRoutes = {
    splash : (_) => SplashPage(),
    home : (_) => HomePage(),
    detail : (_) => NextPage(),
    profile : (_) => ProfilePage(),
    setting : (_) => SettingPage(),
  };


}