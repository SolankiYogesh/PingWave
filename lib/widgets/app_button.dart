import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({required this.text, super.key, required this.onPress});

  String text;
  void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2563EB), // Background color
          border: Border.all(color: Color(0xFF2563EB)), // Border color
          borderRadius: BorderRadius.circular(32), // Border radius
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: 15), // Padding inside the button
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ), // Text color
          ),
        ),
      ),
    );
  }
}
