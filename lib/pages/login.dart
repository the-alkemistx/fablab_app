import 'package:fablabapp/pallete.dart';
import 'package:fablabapp/widgets/google_button.dart';
import 'package:flutter/material.dart';
import 'package:fablabapp/widgets/gradient_button.dart';
import 'package:fablabapp/widgets/login_field.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                width: 300,
                height: 300,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Lottie.network(
                    'https://assets7.lottiefiles.com/private_files/lf30_m6j5igxb.json',
                  ),
                ),
              ),
              LoginField(
                hintText: 'Email',
                customIcon: Icons.mail,
                customIconColor: Pallete.whiteColor,
                controller: emailController,
              ),
              const SizedBox(height: 15),
              LoginField(
                hintText: 'Password',
                customIcon: Icons.fingerprint_outlined,
                customIconColor: Pallete.whiteColor,
                controller: passwordController,
              ),
              const SizedBox(height: 20),
              GradientButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                },
                hintText: 'Sign in',
              ),
              const SizedBox(height:10),
              GoogleLoginButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
