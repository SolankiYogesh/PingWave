import 'package:flutter/material.dart';
import 'package:ping_wave/helpers/images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.auth_back),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
