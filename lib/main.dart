import 'package:flutter/material.dart';
import 'package:navigation_exp_434/app_routes.dart';
import 'package:navigation_exp_434/home_page.dart';
import 'package:navigation_exp_434/next_page.dart';
import 'package:navigation_exp_434/profile_page.dart';
import 'package:navigation_exp_434/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: HomePage(),
      /*initialRoute: "/",
      routes: {
        "/" : (_) => HomePage(),
        "/setting" : (_) => SettingPage(),
        "/profile" : (_) => ProfilePage(),
        "/detail" : (_) => NextPage(data: {
          'title': 'Ocean Waves',
          'url': 'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        }),
      },*/
      initialRoute: AppRoutes.home,
      routes: AppRoutes.mRoutes,
    );
  }
}

