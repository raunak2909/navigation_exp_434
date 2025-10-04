import 'dart:async';

import 'package:flutter/material.dart';
import 'package:navigation_exp_434/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 200),
            SizedBox(width: 11),
            Text(
              'Classico',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
