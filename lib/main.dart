import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'screens/start_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
//import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: StartScreen.id,
    routes: {
      StartScreen.id: (context) {
        return StartScreen();
      },
      LogInScreen.id: (context) {
        return LogInScreen();
      },
      SignUpScreen.id: (context) {
        return SignUpScreen();
      },
      HomeScreen.id : (context) {
        return HomeScreen();
      }
    },
  ));
}
