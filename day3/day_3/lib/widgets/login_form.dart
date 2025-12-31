import 'package:app_1/classes/User.dart';
import 'package:app_1/widgets/login_form.dart';
import 'package:app_1/screens/login_screen.dart';
import 'package:app_1/widgets/custom_button.dart';
import 'package:app_1/widgets/custom_form_field.dart';
import 'package:app_1/classes/validator.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextField.CustomFormField(
            hintText: 'Enter your email',
            title: "Your Email",
            validator: Validator.email,
            controller: emailcontroller,
          ),
          const SizedBox(height: 20),

          CustomTextField.CustomFormField(
            hintText: 'Enter your password',
            title: "Password",
            validator: Validator.password,
            controller: passwordcontroller,
            obscure: true,
          ),
          const SizedBox(height: 40),

          CustomButton(
            text: "Continue",
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                getAndPrintResponse();
              }
            },
          ),
        ],
      ),
    );
  }
}

void getAndPrintResponse() {
  var response = {
    "id": 1,
    "email": "yassinbenyahia17@gmail.com",
    "token": "fake_token",
  };
  var user = User.fromJson(response);
  print(user.email);
  print(user.token);
}
