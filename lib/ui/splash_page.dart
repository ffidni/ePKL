import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushNamedAndRemoveUntil(
          context, "/onboarding", (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 240,
          height: 323,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash_logo.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
