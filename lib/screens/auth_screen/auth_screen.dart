import 'package:flutter/material.dart';
import 'package:ping_wave/helpers/app_colors.dart';
import 'package:ping_wave/helpers/images.dart';
import 'package:ping_wave/screens/auth_screen/widgets/tab_view.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // This container should cover the entire screen and show the background image
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: !isDarkMode
                    ? Theme.of(context).colorScheme.primary
                    : AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: TabView(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
