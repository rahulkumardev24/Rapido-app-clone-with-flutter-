import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rapido_app_clone/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    /// after 2 Second navigate to home screen
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
            child: Image.asset(
          "assets/image/rapido logo.png",
          height: 200,
          width: 200,
        )),
      ),
    );
  }
}

/// THIS IS MY SPLASH SCREEN
/// Splash Screen UI Complete
/// Navigate to home screen after splash screen
/// -----------------------COMPLETE ------------------///
