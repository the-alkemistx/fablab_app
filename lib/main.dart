import 'package:fablabapp/pages/certification.dart';
import 'package:fablabapp/pages/login.dart';
import 'package:fablabapp/pages/member.dart';
import 'package:fablabapp/pages/sign_up.dart';
import 'package:fablabapp/pages/skills.dart';
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
      routes: {
        'login': (context) => const LoginScreen(),
        //'home':(context) => HomeScreen(user: user,),
        'skill':(context) => SkillsScreen(),
        'member':(context) => const MembershipScreen(),
        'certificates':(context) => const CertificateInputPage(),
      }
  ));
}


