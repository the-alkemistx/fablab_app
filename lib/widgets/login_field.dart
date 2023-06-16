import 'package:flutter/material.dart';
import 'package:fablabapp/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final IconData? customIcon;
  final Color? customIconColor;
  final TextEditingController controller;

  const LoginField({
    Key? key,
    required this.hintText,
    this.customIcon,
    this.customIconColor,
    required this.controller,
  }) : super(key: key);

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email is required.';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$').hasMatch(value)) {
      return 'Enter a valid email.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(27),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Pallete.borderColor,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Pallete.gradient5,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
            prefixIcon: customIcon != null
                ? Icon(
              customIcon,
              color: customIconColor,
            )
                : null,
          ),
          validator: (value) {
            if (hintText == 'Email') {
              return _validateEmail(value!);
            }
            if (value!.isEmpty) {
              return 'Password is required.';
            }
            return null;
          },
        ),
      ),
    );
  }
}
