import 'package:app_1/widgets/login_form.dart';
import 'package:app_1/widgets/custom_button.dart';
import 'package:app_1/widgets/custom_social_button.dart';
import 'package:app_1/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ), // Reduced from 200 for better mobile view
              const Center(
                child: Text(
                  "Login Page",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 100, 141, 219),
                  ),
                ),
              ),
              const SizedBox(height: 60),

              LoginForm(),

              const SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.grey.shade400),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.grey.shade400),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              CustomSocialButton(
                text: "Login with Apple",
                imagePath: 'assets/apple.png',
                onPressed: () {},
              ),
              const SizedBox(height: 20),

              CustomSocialButton(
                text: "Login with Google",
                imagePath: 'assets/google.png',
                onPressed: () {},
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      // Handle sign up navigation
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 100, 141, 219),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
