import 'package:fablabapp/pages/login.dart';
import 'package:fablabapp/pallete.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: const LoginScreen(),
    theme: ThemeData(
      scaffoldBackgroundColor: Pallete.backgroundColor,
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
          color: Pallete.whiteColor, // Set the desired hintText color
        ),
      ),
    ),
  ));
}
