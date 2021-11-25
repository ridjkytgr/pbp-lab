import 'package:flutter/material.dart';
import 'package:lab_7/widgets/button.dart';
import 'package:lab_7/widgets/text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String usernameValue = "";
  String password1 = "";
  String password2 = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SizedBox(
        height: 10.0,
      ),
      Text("Sign Up",
          style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontSize: 36)),
      SizedBox(
        height: 20.0,
      ),
      AuthText(label: "Masukkan username di sini."),
      SizedBox(
        height: 20.0,
      ),
      AuthText(label: "Masukkan password di sini."),
      SizedBox(
        height: 20.0,
      ),
      AuthText(label: "Masukkan ulang password di sini."),
      SizedBox(
        height: 20.0,
      ),
      AuthText(label: "Masukkan email di sini."),
      SizedBox(
        height: 15.0,
      ),
      Text("Saya adalah ",
          style: TextStyle(
            fontSize: 16,
          )),
      RoleRadioButton(),
      PrimaryButton(),
      SizedBox(
        height: 5.0,
      ),
      SecondaryButton(),
    ]);
  }
}
