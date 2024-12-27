import 'package:flutter/material.dart';
import 'package:rapido_app_clone/screen/home_screen.dart';
import 'package:rapido_app_clone/screen/search_screen.dart';
import 'package:rapido_app_clone/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen());
  }
}

/// IN THIS VIDEO WE CREATE Rapido app clone
/// ______________________RAPIDO APP CLONE___________________________________///
/// Simple step
/// STEPS
/// Step 1
/// Project Setup => DONE
/// step 2
/// Create Custom Text Style => DONE
/// Step 3
/// Create Splash Screen => DONE
/// Step 4
/// Create Home Screen => DONE
/// flow Home Screen Step
/// Step 5
/// Create Search Screen => DONE
///
/// _______________________ PROJECT COMPLETE______________________________///
/// CHECK COMPLETE
/// FINAL TEST
///
///
