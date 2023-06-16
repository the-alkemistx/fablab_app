import 'package:fablabapp/pages/homepage.dart';
import 'package:fablabapp/pallete.dart';
import 'package:flutter/material.dart';
import 'package:fablabapp/widgets/gradient_button.dart';
import 'package:fablabapp/widgets/login_field.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<User?> _fetchUser() async {
    User? user = _auth.currentUser;
    return user;
  }

  Future<void> _submitLoginForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        // Successful login
        _fetchUser().then(
              (user) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Home(user: user),
              ),
            );
          },
        );
      } on FirebaseAuthException catch (e) {
        String errorMessage = 'An error occurred. Please try again.';
        if (e.code == 'user-not-found') {
          errorMessage = 'No user found with this email.';
        } else if (e.code == 'wrong-password') {
          errorMessage = 'Invalid password.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Lottie.asset(
                'assets/images/93462-login.json',
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    LoginField(
                      hintText: 'Email',
                      customIcon: Icons.mail,
                      customIconColor: Pallete.whiteColor,
                      controller: _emailController,
                    ),
                    const SizedBox(height: 15),
                    LoginField(
                      hintText: 'Password',
                      customIcon: Icons.fingerprint_outlined,
                      customIconColor: Pallete.whiteColor,
                      controller: _passwordController,
                    ),
                    const SizedBox(height: 20),
                    GradientButton(
                      onPressed: () {
                        _submitLoginForm().then(
                          (value) {
                            _fetchUser().then(
                              (user) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Home(user: user),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      }, // Call the _login function
                      hintText: 'Sign in',
                    ),
                  ])),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
