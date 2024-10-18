import 'package:flutter/material.dart';
import 'package:ping_wave/helpers/app_colors.dart';
import 'package:ping_wave/widgets/app_button.dart';
import 'package:ping_wave/widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          InputField(
              icon: Icons.email_outlined,
              hintText: "Email",
              controller: emailController),
          const SizedBox(
            height: 20,
          ),
          InputField(
              icon: Icons.lock_clock_outlined,
              hintText: "Password",
              controller: passwordController),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    shape: CircleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF2563EB))),
                    tristate: true,
                    // shape: RoundedRectangleBorder(
                    //     side: BorderSide(width: 1, color: Color(0xFF2563EB)),
                    //     borderRadius: BorderRadius.circular(5)),
                    checkColor: Colors.white,
                    fillColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.blue; // Color when hovered
                      }
                      return Colors.white; // Default color
                    }),
                    value: isAgreed,
                    onChanged: (state) {
                      setState(() {
                        isAgreed = state ?? false;
                      });
                    },
                  ),
                  Text("Remember me",
                      style: TextStyle(color: AppColors.greyShade64))
                ],
              ),
              GestureDetector(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                      color: Color(0xFF2563EB),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          AppButton(
            text: "Login",
            onPress: () {},
          )
        ],
      ),
    );
  }
}
